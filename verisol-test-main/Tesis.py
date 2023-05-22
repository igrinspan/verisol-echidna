import itertools
import subprocess
import inspect
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
from time import sleep
from enum import Enum
import sys
sys.path.append('../')
from file_manager import create_directory, delete_directory, create_file, write_file, write_file_from_string

class EchidnaRunner:
    def __init__(self, preconditions, states, extraConditions):
        self.preconditions = preconditions
        self.states = states
        self.extraConditions = extraConditions
        self.preconditionsThreads = preconditions
        self.statesThreads = states
        self.extraConditionsThreads = extraConditions

    def set_up_and_run(self, fileNameTemp, contractName, final_directory, init=False):
        toolComm = self.create_echidna_command(fileNameTemp, contractName, final_directory)
        # acá deberíamos 1: generalizarla para cualquier contrato, 2: hacer que se puedan ingresar distintos parámetros al constructor.
        self.hardcode_constructor_parameters(fileNameTemp, 2, 55, 0)
        if init:
            self.transform_contract_for_init(fileNameTemp)
        print(f"El comando a correr es {toolComm} en el directorio {final_directory}") 
        result = self.run_echidna_command(toolComm, final_directory)
        print(result)
        tests_that_failed = self.process_output(result)
        self.print_failed_tests(tests_that_failed, init)

    def process_output(self, tool_result):
        tests_that_failed = []
        for line in tool_result.splitlines():
            if "failed!" in line:
                failed_test = line.split()[0][2:-3] # vcIxJxK(): -> IxJxK.
                i, j, k = get_params_from_function_name(failed_test)
                tests_that_failed.append([i, j, k])
        return tests_that_failed

    def print_failed_tests(self, tests_that_failed, init):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], states)}")
                add_init_node_to_graph(test)
        else:
            for test in tests_that_failed:
                print_output(test[0], test[2], test[1], states, states) #print_output recibe como segundo param la función y tercero el assert.
                add_node_to_graph(test[0], test[1], test[2], states, states)

    def run_echidna_command(self, toolComm, final_directory):
        result = subprocess.run([toolComm, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
        return result.stdout.decode('utf-8')

    # Esta función está implementada específicamente para crowdfunding, generalizarla. 
    # Y que se puedan iniciar los constructores con diferentes valores.
    def hardcode_constructor_parameters(self, fileNameTemp, max_block, funding_goal, initial_block):
        inputfile = open(fileNameTemp, 'r').readlines()
        constructor_lines = self.get_constructor_from_file(inputfile).splitlines()

        # new_constructor_lines = build_new_constructor(constructor_lines, max_block, funding_goal, initial_block)
        new_constructor_lines = ["constructor() public {", "owner = msg.sender;", f"max_block = {max_block};", f"goal = {funding_goal};", "balance = 0;", f"blockNumber = {initial_block};"]
        constructor_lines = new_constructor_lines

        # Buscamos la línea en la que comienza el constructor y en la que termina, para actualizar ese rango.
        constructor_start_line = next((index for index, line in enumerate(inputfile) if line.strip().startswith('constructor(')), None)
        constructor_end_line = next((index for index, line in enumerate(inputfile[constructor_start_line:]) if line.strip() == '}'), None) + constructor_start_line

        inputfile[constructor_start_line:constructor_end_line] = list(map(lambda x: x + "\n", constructor_lines))

        write_file_from_string(fileNameTemp, inputfile)
        return 

    def get_constructor_from_file(self, inputfile):
        #inputfile es una lista de strings. tiene uno por cada línea del contrato.
        res = ""
        for i in range(len(inputfile)):
            line = inputfile[i]
            if ('constructor(' in line):
                while True:
                    res += line
                    if ('}' in line): # Si tenemos un constructor que haga algo adentro con llaves {}, cambiar esto.
                        return inspect.cleandoc(res).replace('  ', '')
                    i += 1
                    line = inputfile[i]
        raise NameError('No se encontró el constructor del contrato.')

    def transform_contract_for_init(self, fileNameTemp):
        new_contract_body = self.remove_everything_after_constructor(fileNameTemp)   
        write_file_from_string(fileNameTemp, new_contract_body)
    
    def remove_everything_after_constructor(self, fileNameTemp):
        lines = open(fileNameTemp, 'r').readlines()
        constructor_line = next((index for index, line in enumerate(lines) if line.strip().startswith('constructor(')), None)
        end_line = next((index for index, line in enumerate(lines[constructor_line:]) if line.strip() == '}'), None)
        lines = lines[:constructor_line + end_line + 1]
        lines.append("}")
        return lines

    def create_echidna_command(self, fileNameTemp, contractName, directory):
        config_file = self.create_config_file(directory, 50000, 100, 0) # parámetros de crowdfunding
        commandResult =  f"echidna {fileNameTemp} --contract {contractName} --config {config_file}"
        return commandResult

    def create_config_file(self, directory, testLimit, maxValue, balanceContract, shrinkLimit=0):
        testMode = "assertion"
        format = "text"
        new_file_name = f"{directory}/config.yaml"

        newfile = open(new_file_name, "w")
        newfile.write(f"testMode: \"{testMode}\"\n")
        newfile.write(f"format: \"{format}\"\n")
        newfile.write(f"shrinkLimit: {shrinkLimit}\n")
        newfile.write(f"testLimit: {testLimit}\n")
        newfile.write(f"maxValue: {maxValue}\n")
        newfile.write(f"balanceContract: {balanceContract}\n")
        newfile.close()
        print("----------- Se creó una configFile para esos tests -------------------")
        return new_file_name

    def clean_true_requires(self, body):
        new_body = ""
        for line in body.splitlines():
            if line != "require(true);":
                new_body +=  line + "\n"
        return new_body


def getCombinations(funcionesNumeros):
    global statePreconditions
    truePreconditions = []
    results = []
    statesTemp = []
    count = len(funcionesNumeros)
    for index, statePrecondition in enumerate(statePreconditions):
        if statePrecondition == "true":
            truePreconditions.append(index + 1)

    # Combinations
    for L in range(len(funcionesNumeros) + 1):
        for subset in itertools.combinations(funcionesNumeros, L):
            isTrue = True
            for truePre in truePreconditions:
                if truePre not in subset:
                    isTrue = False
            if isTrue == True:
                results.append(subset)

    for partialResult in results:
        paddingResult = []
        paddingResult = [0 for i in range(count)] 
        for i in range(count):
            if len(partialResult) > i and partialResult[i] >=0:
                indice = partialResult[i]
                paddingResult[indice-1] = indice
        statesTemp.append(paddingResult)
    statesTemp2 = []
    
    for combination in statesTemp:
        isCorrect = True
        for iNumber, number in enumerate(combination):
            for idx, x in enumerate(statePreconditions):
                if iNumber != idx:
                    if number == 0:
                        if statePreconditions[iNumber] == x and combination[idx] != 0:
                            isCorrect = False
                    elif statePreconditions[iNumber] == x and not((idx+1) in combination):
                        isCorrect = False
        
        if isCorrect:
            statesTemp2.append(combination)
            
    return statesTemp2

def getPreconditions(funcionesNumeros):
    global states, statePreconditions
    preconditions = []
    for result in states:
        precondition = ""
        for number in funcionesNumeros:
            if precondition != "":
                precondition += " && "
            if number in result:
                precondition += statePreconditions[number-1]
            else:
                precondition += "!(" + statePreconditions[number-1] + ")"
        preconditions.append(precondition)
    return preconditions

def combinationToString(combination):
    output = ""
    for i in combination:
        output += str(i) + "-"
    return output

def functionOutput(number):
    return "function vc" + number + "(" + functionVariables + ") payable public {"

def getToolCommand(includeNumber, toolCommand, combinations, txBound):
    global contractName
    command = toolCommand + " " 
    command = command + "/txBound:" + str(txBound) + " "
    for indexCombination, combi in enumerate(combinations):
        if combi != includeNumber: 
            command += "/ignoreMethod:vc"+ combi +"@" + contractName + " "
    return command

def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require("+condition+");\n"
    return extraConditionOutput 

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre, extraConditionPost):
    if mode == Mode.epa:
        precondictionFunction = functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "require("+preconditionRequire+");\nrequire("+precondictionFunction+");\n" + extraConditionOutputPre + function + "\n"  + "assert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput

def output_init_function(preconditionAssert, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    verisolFucntionOutput =  extraConditionOutput + "assert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def output_valid_state(preconditionRequire, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    return "require("+preconditionRequire+");\n" + extraConditionOutput + "assert(false);\n"

def output_combination(indexCombination, tempCombinations):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            if mode == Mode.epa:
                output += functions[function-1] +"\n"
            else:
                output += statesNames[function-1]

    if output == "":
        output = "Vacio\n"
    return output

def print_combination(indexCombination, tempCombinations):
    output = output_combination(indexCombination, tempCombinations)
    if time == False:
        print(output + "---------")

def get_params_from_function_name(temp_function_name):
    array = temp_function_name.split('x')
    return int(array[0]), int(array[1]), int(array[2])

def get_valid_preconditions_output(preconditions, extraConditions):
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionRequire, "0", "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_valid_state(preconditionRequire, extraConditions[indexPreconditionRequire])
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_valid_transitions_output(preconditionsThread, preconditions, extraConditionsTemp, extraConditions, functions, statesThread): 
    global mode
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsThread):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                extraConditionPre = extraConditionsTemp[indexPreconditionRequire]
                extraConditionPost = extraConditions[indexPreconditionAssert]
                if (indexFunction + 1) in statesThread[indexPreconditionRequire] and mode == Mode.epa:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
                elif mode == Mode.states:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_init_output(preconditions, extraConditions): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0" , "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_init_function(preconditionAssert, extraConditions[indexPreconditionAssert])
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def try_preconditions(tool, tempFunctionNames, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp, arg): 
    global txBound
    preconditionsTemp2 = []
    statesTemp2 = []
    extraConditionsTemp2 = []
    
    for functionName in tempFunctionNames:
        if time == False:
            print(functionName + "---" + str(arg))
        indexPreconditionRequire, _ , _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, txBound):
            print_combination(indexPreconditionRequire, statesTemp)
            preconditionsTemp2.append(preconditionsTemp[indexPreconditionRequire])
            statesTemp2.append(statesTemp[indexPreconditionRequire])
            extraConditionsTemp2.append(extraConditionsTemp[indexPreconditionRequire])
    return preconditionsTemp2, statesTemp2, extraConditionsTemp2

def try_transaction(tool, tempFunctionNames, final_directory, statesTemp, states, arg):
    global txBound 
    for functionName in tempFunctionNames:
        if time == False:
            print(functionName + "---" + str(arg))
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, txBound):
            add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states)
            print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, statesTemp, states)

def try_init(tool, tempFunctionNames, final_directory, states):
    global dot
    for functionName in tempFunctionNames:
        indexPreconditionAssert, _, _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, 1):
            dot.node("init", "init")
            dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
            dot.edge("init",combinationToString(states[indexPreconditionAssert]) , "constructor")

def try_command(tool, temp_function_name, tempFunctionNames, final_directory, txBound):
    global tool_output, verbose
    command = getToolCommand(temp_function_name, tool, tempFunctionNames, txBound)
    # print(command)
    result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    #if verbose:
    #    print(result.stdout.decode('utf-8'))
    return tool_output in str(result.stdout.decode('utf-8'))

def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination):
    print(indexFunction)
    output ="Desde el estado: "+ output_combination(indexPreconditionRequire, combinations) + "\nHaciendo: " + functions[indexFunction] + "\nLlegas al estado: " + output_combination(indexPreconditionAssert, fullCombination) + "\n---------"
    #if time == False:
    print(output)

def add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states):
    global dot, functions
    dot.node(combinationToString(statesTemp[indexPreconditionRequire]), output_combination(indexPreconditionRequire, statesTemp))
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge(combinationToString(statesTemp[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=functions[indexFunction])
    print("Se agregó algo al grafo")

def add_init_node_to_graph(init_test): # ian
    global states
    print(f"El test a agregar al grafo de init es: {init_test}")
    indexPreconditionAssert = init_test[0]
    dot.node("init", "init")
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge("init",combinationToString(states[indexPreconditionAssert]) , "constructor")

def reduceCombinations(arg):
    global fileName, preconditionsThreads, statesThreads, extraConditionsThreads, contractName
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    extraConditionsTemp = extraConditionsThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)
    body,fuctionCombinations = get_valid_preconditions_output(preconditionsTemp, extraConditionsTemp)
    write_file(fileNameTemp, body, contractName)
    tool = "Verisol " + fileNameTemp + " " + contractName
    preconditionsTemp2, statesTemp2, extraConditionsTemp2 = try_preconditions(tool, fuctionCombinations, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp , arg)
    preconditionsThreads[arg] = preconditionsTemp2
    statesThreads[arg] = statesTemp2
    extraConditionsThreads[arg] = extraConditionsTemp
    if not verbose:
        delete_directory(final_directory)

def validCombinations(arg, tool="verisol"):
    global preconditionsThreads, statesThreads, extraConditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    preconditionsTemp = preconditionsThreads
    statesTemp = statesThreads
    extraConditionsTemp = extraConditionsThreads
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)

    body, fuctionCombinations = get_valid_transitions_output(preconditionsTemp, preconditions, extraConditionsTemp, extraConditions, functions, statesTemp)
    write_file(fileNameTemp, body, contractName, echidna_runner)
    print("----------- Se creó un archivo temporal con todos los tests ----------")
    if (tool == 'echidna'):
        result = echidna_runner.set_up_and_run(fileNameTemp, contractName, final_directory)
        return
    else:
        toolComm = "Verisol " + fileNameTemp + " " + contractName
    try_transaction(toolComm, fuctionCombinations, final_directory, statesTemp, states, arg)
    if not verbose:
        delete_directory(final_directory)

def validInit(arg, tool="verisol"):
    global preconditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)

    body, fuctionCombinations = get_init_output(preconditions, extraConditions)
    write_file(fileNameTemp, body, contractName, echidna_runner)
    if (tool == 'echidna'):
        print("Estoy en validInit() con echidna")
        result = echidna_runner.set_up_and_run(fileNameTemp, contractName, final_directory, True)
        return
    else:
        toolComm = "Verisol " + fileNameTemp + " " + contractName
    try_init(toolComm, fuctionCombinations, final_directory, states)
    delete_directory(final_directory)

class Mode(Enum):
    epa = "epa"
    states = "states"

def make_global_variables(config):
    global fileName, preconditions, dot, statesNames, functions, statePreconditions, contractName, functionVariables, functionPreconditions, txBound, statePreconditionsModeState, statesModeState
    fileName = "Contracts/" + config.fileName
    print(config.fileName)
    functions = config.functions
    statePreconditions = config.statePreconditions
    statesNames = config.statesNamesModeState
    statePreconditions = config.statePreconditions
    contractName = config.contractName
    functionVariables = config.functionVariables
    functionPreconditions = config.functionPreconditions
    txBound = config.txBound
    statePreconditionsModeState = config.statePreconditionsModeState
    statesModeState = config.statesModeState

def main():
    global config, dot, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions, echidna_runner
    make_global_variables(config)

    count = len(functions)
    funcionesNumeros = list(range(1, count + 1))

    if (echidna == True):
        preconditions = statePreconditionsModeState
        states = statesModeState
        extraConditions = ["true" for i in range(len(states))]
        preconditionsThreads = preconditions
        statesThreads = states
        extraConditionsThreads = extraConditions
        echidna_runner = EchidnaRunner(statePreconditionsModeState, statesModeState, extraConditions)
        dot = graphviz.Digraph(comment='prueba-echidna-crowdfunding')
        validCombinations(0, "echidna") 
        validInit(1, "echidna")
        dot.render("graph/" + "0_echidna_" + str(mode))
        return

    threadCount = 10
    threads = []

    dot = graphviz.Digraph(comment='Prueba')

    extraConditions = []

    if mode == Mode.epa :
        states = getCombinations(funcionesNumeros)
        preconditions = getPreconditions(funcionesNumeros)
        try:
            extraConditions = [config.epaExtraConditions for i in range(len(states))]
        except:
            extraConditions = ["true" for i in range(len(states))]
    else :
        preconditions = statePreconditionsModeState
        states = statesModeState
        try:
            extraConditions = config.statesExtraConditions
        except:
           extraConditions = ["true" for i in range(len(states))]

    preconditionsThreads = preconditions
    preconditionsThreads = np.array_split(preconditionsThreads, threadCount)
    statesThreads = states
    statesThreads = np.array_split(statesThreads, threadCount)
    extraConditionsThreads = extraConditions
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.array_split(extraConditions, threadCount)

    if time == False:
        print("Length")
        print(len(preconditions))

    if mode == Mode.epa :
        for i in range(threadCount):
            thread = Thread(target = reduceCombinations, args = [i])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()

    preconditionsThreads = [x for x in preconditionsThreads if x != []]
    statesThreads = [x for x in statesThreads if x != []]
    extraConditionsThreads = [x for x in extraConditionsThreads if x != []]

    preconditionsThreads = np.concatenate(preconditionsThreads)
    statesThreads = np.concatenate(statesThreads)
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.concatenate(extraConditionsThreads)
    states = statesThreads
    preconditions = preconditionsThreads
    extraConditions = extraConditionsThreads
    realThreadCount = threadCount if len(preconditionsThreads) > threadCount else len(preconditionsThreads)

    threads = []
    divideThreads = 1
    moduleThreadsConut = 0
    divideCount = realThreadCount
    if time == False:
        print("Length")
        print(len(preconditionsThreads))
    if len(preconditionsThreads) > 30:
        if time == False:
            print("MAYOR A 200")
        divideCount = len(preconditionsThreads)
        divideThreads = int(divideCount/threadCount)
        moduleThreadsConut = divideCount % threadCount

    preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
    statesThreads = np.array_split(statesThreads, divideCount)
    extraConditionsThreads = np.array_split(extraConditionsThreads, divideCount)

    for y in range(divideThreads):
        threads = []
        for i in range(realThreadCount):
            thread = Thread(target = validCombinations, args = [i + y * threadCount])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()
    threads = []
    
    for index in range(moduleThreadsConut):
        thread = Thread(target = validCombinations, args = [threadCount * divideThreads + index])
        thread.start()
        threads.append(thread)
    
    thread = Thread(target = validInit, args = [len(preconditionsThreads)])
    thread.start()
    threads.append(thread)
    for thread in threads:
        thread.join()
    print("ENDED")
    tempFileName = configFile.replace('Config','')
    dot.render("graph/" + tempFileName + "_" + str(mode))


states = []
preconditions = []
tool_output = "Found a counterexample"
echidna_output = "failed!"

# Cambiar este path según dónde se ejecute
sys.path.append("/Users/iangrinspan/Documents/1C2023/Beca/verisol-test-main/Configs")

if __name__ == "__main__":
    global mode, config, verbose, time
    epaMode = False
    statesMode = False
    echidna = False
    configFile = sys.argv[1]
    print(f"Config file: {configFile}")
    print(f"Flag: {sys.argv[2]}")
    verbose = False
    time = False
    
    if (len(sys.argv) > 2) and sys.argv[2] == "-echidna":
        echidna = True 
        mode = Mode.states
        config = __import__(configFile, level=0)
        main()

    else:
        if len(sys.argv) > 2 and sys.argv[2] == "-v":
            verbose = True
        if len(sys.argv) > 2 and sys.argv[2] == "-t":
            time = True
        if len(sys.argv) > 3 and sys.argv[3] == "-e":
            epaMode = True
        if len(sys.argv) > 3 and sys.argv[3] == "-s":
            statesMode = True
        if len(sys.argv) > 3 and sys.argv[3] == "-a":
            statesMode = True
            epaMode = True
    
    if epaMode:
        mode = Mode.epa
        print(configFile)
        config = __import__(configFile, level=0)
        main()

    if statesMode:
        config = __import__(configFile, level=0)
        mode = Mode.states
        main()

