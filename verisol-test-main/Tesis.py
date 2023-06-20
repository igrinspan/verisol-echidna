import itertools
import subprocess
import inspect
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
from time import time, sleep
from enum import Enum
import sys
from dataclasses import dataclass, fields, asdict
sys.path.append('../')
from file_manager import create_directory, delete_directory, create_file, write_file, write_file_from_string, read_from_file


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
    return "\tfunction vc" + number + "(" + functionVariables + ") payable public {"


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
    verisolFucntionOutput = "\t\trequire("+preconditionRequire+");\n\t\trequire("+precondictionFunction+");\n\t\t" + extraConditionOutputPre + "\t\t" + function + "\n"  + "\t\tassert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput


def output_init_function(preconditionAssert, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    verisolFucntionOutput =  extraConditionOutput + "\t\tassert(!(" + preconditionAssert + "));"
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
    if time_opt == False:
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
        temp_output += temp_function + "\n\t}\n"
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
                    temp_output += temp_function + "\n\t}\n"
                elif mode == Mode.states:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "\n\t}\n"
    return temp_output, tempFunctionNames


def get_init_output(preconditions, extraConditions): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0" , "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_init_function(preconditionAssert, extraConditions[indexPreconditionAssert])
        temp_output += temp_function + "\n\t}\n"
    return temp_output, tempFunctionNames


def try_preconditions(tool, tempFunctionNames, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp, arg): 
    global txBound
    preconditionsTemp2 = []
    statesTemp2 = []
    extraConditionsTemp2 = []
    
    for functionName in tempFunctionNames:
        if time_opt == False:
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
        if time_opt == False:
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
    output ="Desde el estado: "+ output_combination(indexPreconditionRequire, combinations) + "\nHaciendo: " + functions[indexFunction] + "\nLlegas al estado: " + output_combination(indexPreconditionAssert, fullCombination) + "\n---------"
    #if time == False:
    print(output)


def add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states, dot):
    global functions
    dot.node(combinationToString(statesTemp[indexPreconditionRequire]), output_combination(indexPreconditionRequire, statesTemp))
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge(combinationToString(statesTemp[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=functions[indexFunction])


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


def validCombinations(arg):
    global preconditionsThreads, statesThreads, extraConditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)
    body, fuctionCombinations = get_valid_transitions_output(preconditionsThreads[arg], preconditions,
                                                             extraConditionsThreads[arg], extraConditions, functions,
                                                             statesThreads[arg])
    write_file(fileNameTemp, body, contractName)
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_transaction(tool, fuctionCombinations, final_directory, statesThreads[arg], states, arg)
    if not verbose:
        delete_directory(final_directory)


def validInit(arg):
    global preconditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)
    body, fuctionCombinations = get_init_output(preconditions, extraConditions)
    write_file(fileNameTemp, body, contractName)
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_init(tool, fuctionCombinations, final_directory, states)
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
    print(config)



class EchidnaRunner:
    def __init__(self, dir, contract, config_file_params):
        self.directory = dir
        self.contract = contract
        self.config_file_params = config_file_params

    def run_contract(self): 
        start = time()
        result = self.set_up_and_run()
        end = time()
        print(f'El contrato demoró {round(end - start, 2)} segundos en correr...')
        return self.process_output(result)
    
    def run_contract_saving_output(self):
        result = self.set_up_and_run(self.contract, contractName)
        write_file = open(f'{self.directory}/pruebas.txt','w')
        for line in result.splitlines():
            write_file.write(line)
        write_file.close()
        return self.process_output(result)
    
    def set_up_and_run(self):
        tool_command = self.create_echidna_command()
        print(f"El comando a correr es {tool_command} en el directorio {self.directory}")
        result = self.run_echidna_command(tool_command)
        return result

    def run_echidna_command(self, command_to_run):
        result = subprocess.run([command_to_run, ""], shell = True, cwd=self.directory, stdout=subprocess.PIPE)
        return result.stdout.decode('utf-8')

    def process_output(self, tool_result):
        tests_that_failed = []
        for line in tool_result.splitlines():
            if "failed!" in line:
                failed_test = line.split()[0][2:7] # vcIxJxK(¡): -> IxJxK.
                i, j, k = get_params_from_function_name(failed_test)
                tests_that_failed.append([i, j, k])
        return tests_that_failed

    def create_echidna_command(self):
        config_file = self.create_config_file()
        commandResult =  f"echidna {self.contract} --contract {contractName} --config {config_file}"
        return commandResult

    def create_config_file(self):
        new_file_name = f"{self.directory}/config.yaml"
        newfile = open(new_file_name, "w")
        for key, value in asdict(self.config_file_params).items():
            newfile.write(f"{key}: {value} \n")
        newfile.close()
        return new_file_name


class ContractCreator:
    def __init__(self, directory):
        self.directory = directory

    def create_all_contracts(self):
        return self.create_transitions_contract(), self.create_init_contract()

    def create_transitions_contract(self, pre_require, states, pre_assert, extra_cond):
        file_name_temp = create_file("_transitions", self.directory, fileName, contractName)
        body, _ = get_valid_transitions_output(pre_require, pre_assert, extra_cond, extra_cond, functions, states)
        body = self.clean_true_requires(body)
        write_file(file_name_temp, body, contractName)
        return file_name_temp

    def create_init_contract(self):
        filename_temp = create_file("_init", self.directory, fileName, contractName)
        body, _ = get_init_output(preconditions, extraConditions)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, contractName)
        self.transform_contract_for_init(filename_temp)
        return filename_temp

    def transform_contract_for_init(self, filename_temp):
        print(filename_temp)
        new_contract_body = self.remove_everything_after_constructor(filename_temp)
        write_file_from_string(filename_temp, new_contract_body)

    def remove_everything_after_constructor(self, filename_temp):
        lines = open(filename_temp, 'r').readlines()
        _, end_line = self.get_constructor_start_and_end_lines(lines)
        lines = lines[:end_line + 1] + ["}"]
        return lines

    # Para modo epa
    def create_combinations_contract(self, preconditions, extraconditions):
        fileNameTemp = create_file('_combinations', self.directory, fileName, contractName)
        body, _ = get_valid_preconditions_output(preconditions, extraconditions)
        write_file(fileNameTemp, body, contractName)
        return fileNameTemp

    def clean_true_requires(self, body):
        lines = body.replace("require(true);", "").split('\n')
        cleaned_lines = [line for line in lines if line.strip()]
        new_body = '\n'.join(cleaned_lines)
        return new_body

    def get_constructor_start_and_end_lines(self, input_file):
        start_line = next((index for index, line in enumerate(input_file) if line.strip().startswith('constructor(')), None)
        end_line = next((index for index, line in enumerate(input_file[start_line:]) if line.strip() == '}'), None) + start_line + 1
        return start_line, end_line

    # Refactorizar
    def change_for_constructor_fuzzing(self, contract_filename):
        # 1. Agregamos los modifiers y la variable de estado que dice si el contrato ya fue inicializado.
        has_initialized_modifier = "\tmodifier hasInitialized {\n\t\trequire(has_initialized); \n\t\t_; \n\t}\n\n"
        has_not_initialized_modifier = "\tmodifier hasNotInitialized {\n\t\trequire(!has_initialized); \n\t\t_; \n\t}\n\n"
        has_initialized_declaration = "\tbool has_initialized = false;\n\n"
        cosas = has_initialized_modifier + has_not_initialized_modifier + has_initialized_declaration
        write_file(contract_filename, cosas, contractName) # uso esta porque las puedo meter en cualquier lado del contrato
        # 2. Le agregamos el modifier hasInitialized a todas las funciones, incluidos los tests.
        lines = open(contract_filename, 'r').readlines()
        new_lines = []
        for line in lines:
            if "function" in line:
                new_lines += [line.replace(")", ") hasInitialized", 1)] # el 1 indica la cantidad de reemplazos.
            else:
                new_lines += [line]
        # 3. Agregamos el require y el cambio de estado en el constructor.
        require = "\t\trequire(!has_initialized);\n"
        change_status = "\t\thas_initialized = true;\n"
        start, end = self.get_constructor_start_and_end_lines(new_lines)
        new_lines = new_lines[:start+1] + [require] + new_lines[start+1:end-1] + [change_status] + new_lines[end-1:]
        # 4. Hacemos que el constructor sea una función común.
        linea_a_cambiar = new_lines[start] # constructor(uint _max_block, uint _goal, uint _blockNumber) public payable {
        linea_a_cambiar = linea_a_cambiar.replace("constructor", "function my_constructor")
        new_lines[start] = linea_a_cambiar

        write_file_from_string(contract_filename, new_lines)

    def change_for_balance_equal_to_zero(self, contract_filename):
        newlines = []
        lines = open(contract_filename, 'r').readlines()
        for line in lines:
            if 'balance = msg.value;' in line:
                line = line.replace('balance = msg.value;', 'balance = 0;')
            newlines.append(line)

        write_file_from_string(contract_filename, newlines)

    def change_for_goal_equal_to_zero(self, contract_filename):
        newlines = []
        lines = open(contract_filename, 'r').readlines()
        for line in lines:
            if 'goal = _goal;' in line:
                line = line.replace('goal = _goal;', 'goal = 0;')
            newlines.append(line)

        write_file_from_string(contract_filename, newlines)

    def set_initial_balance_to_0(self, contract_filename):
        lines = open(contract_filename, 'r').readlines()
        new_lines = []
        for line in lines:
            if "balance = _balance;" in line:
                new_lines += [line.replace("_balance", "0")]
            elif "goal = _goal;" in line:
                new_lines += [line.replace("_goal", "0")]
            else:
                new_lines += [line]
        write_file_from_string(contract_filename, new_lines)


@dataclass
class EchidnaConfigFileData:
    testLimit: int = 50000
    balanceContract: int = 0
    workers: int = 1
    maxValue: int = 100000000000000000000
    testMode: str = 'assertion'
    format: str = 'text'
    shrinkLimit: int = 0
    seqLen: int = 100


class OutputPrinter:
    def print_results(self, transition_tests_that_failed, init_tests_that_failed):
        self.print_failed_tests(transition_tests_that_failed)
        self.print_failed_tests(init_tests_that_failed, True)
        print(f"Count init: {len(init_tests_that_failed)}\nCount transitions: {len(transition_tests_that_failed)}")

    def print_failed_tests(self, tests_that_failed, init=False):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], states)}")
        else:
            for test in tests_that_failed:
                print_output(test[0], test[2], test[1], states, states) #print_output recibe como segundo param la función y tercero el assert.


class Graph:
    def __init__(self, nombre, dir):
        self.graph = graphviz.Digraph(comment=nombre)
        self.nombre = nombre
        self.dir = dir

    def build_graph(self, transition_tests_that_failed, init_tests_that_failed):
        self.add_failed_tests_init(init_tests_that_failed)
        self.add_failed_tests_transition(transition_tests_that_failed)
        self.graph.render(f"output{self.dir}/graph/" + self.nombre)

    def add_failed_tests_init(self, tests_that_failed):
        for test in tests_that_failed:
            self.add_init_node_to_graph(test)

    def add_failed_tests_transition(self, tests_that_failed):
        for test in tests_that_failed:
            add_node_to_graph(test[0], test[1], test[2], states, states, self.graph)

    def add_init_node_to_graph(self, init_test): 
        global states
        indexPreconditionAssert = init_test[0]
        self.graph.node("init", "init")
        self.graph.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
        self.graph.edge("init",combinationToString(states[indexPreconditionAssert]), "constructor")


def tabs(count):
  return "\t" * count


def newline(count):
  return "\n" * count


def remove_duplicates_from_results(init_failed, transitions_failed):
    transitions_failed_without_duplicates = remove_duplicates(transitions_failed)
    init_failed_without_duplicates = remove_duplicates(init_failed)
    return init_failed_without_duplicates, transitions_failed_without_duplicates


def remove_duplicates(list_of_lists):
    list_of_lists.sort()
    return list(res for res, _ in itertools.groupby(list_of_lists))


def prepare_variables(mode, funcionesNumeros):
    global states, preconditions, extraConditions, statesThreads, preconditionsThreads, extraConditionsThreads
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
    statesThreads = states
    extraConditionsThreads = extraConditions


def discard_unreachable_states(dir):
    contract_created = ContractCreator(dir).create_combinations_contract() 
    ContractCreator(dir).change_for_constructor_fuzzing(contract_created)
    failed_tests = EchidnaRunner(dir).run_contract(contract_created)
    update_global_variables_based_on(failed_tests)


def update_global_variables_based_on(failed_tests):
    global preconditions, states, extraConditions
    preconditionsTemp = []
    statesTemp = []
    extraConditionsTemp = []
    for function in failed_tests:
        precondition_require_index = function[0]
        print_combination(precondition_require_index, states)
        preconditionsTemp.append(preconditions[precondition_require_index])
        statesTemp.append(states[precondition_require_index])
        extraConditionsTemp.append(extraConditions[precondition_require_index])
    preconditions = preconditionsTemp
    states = statesTemp
    extraConditions = extraConditionsTemp


def create_run_and_print_on(dir, dir_name):
    init_contract_to_run = ContractCreator(dir).create_init_contract()
    transitions_contract_to_run = ContractCreator(dir).create_transitions_contract(preconditions, states, preconditions, extraConditions)

    ContractCreator(dir).change_for_constructor_fuzzing(init_contract_to_run)
    ContractCreator(dir).change_for_constructor_fuzzing(transitions_contract_to_run)

    init_config_params = EchidnaConfigFileData(testLimit=100000, workers=32)
    transitions_config_params = EchidnaConfigFileData(testLimit=250000, workers=32)

    init_failed = EchidnaRunner(dir, init_contract_to_run, init_config_params).run_contract()
    print(f'Se encontraron {len(init_failed)} resultados para el constructor')
    write_file = open('output_echidna_states/resultados.txt','a')
    write_file.write(f"\n --------------\n")
    write_file.write(f"Resultados de init:\n {init_failed}\n\n")
    tr_failed = EchidnaRunner(dir, transitions_contract_to_run, transitions_config_params).run_contract()
    write_file.write(f"Resultados de transitions (todo en el mismo):\n {tr_failed}\n\n")

    # Deberíamos correrlo también con balance = 0 y un max_value bajo para que se pueda donar 0. 
    ContractCreator(dir).change_for_balance_equal_to_zero(transitions_contract_to_run)
    config_balance0 = EchidnaConfigFileData(testLimit=400000, workers=32, maxValue=1)
    tr_failed2 = EchidnaRunner(dir, transitions_contract_to_run, config_balance0).run_contract()
    write_file.write(f"Resultados de transitions con maxValue=1 (la idea es que eso haga que comience con balance = 0):\n {tr_failed2}\n\n")
    tr_failed += tr_failed2

    ContractCreator(dir).change_for_goal_equal_to_zero(transitions_contract_to_run)
    config_goal0 = EchidnaConfigFileData(testLimit=150000, workers=32)
    tr_failed3 = EchidnaRunner(dir, transitions_contract_to_run, config_goal0).run_contract()
    write_file.write(f"Resultados de transitions con el contrato inicializado con goal=0:\n {tr_failed3}\n\n")
    tr_failed += tr_failed3

    tr_failed = remove_duplicates(tr_failed)
    
    OutputPrinter().print_results(tr_failed, init_failed)
    Graph(dir_name, dir_name).build_graph(tr_failed, init_failed)

def logica_echidna_epa():
    dir_name = '_echidna_epa'
    dir = create_directory(dir_name)
    discard_unreachable_states(dir)
    create_run_and_print_on(dir, dir_name)


def logica_echidna_states():
    dir_name = '_echidna_states'
    dir = create_directory(dir_name)
    create_run_and_print_on(dir, dir_name)


def main():
    global config, dot, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions, echidna_runner
    make_global_variables(config)

    funcionesNumeros = list(range(1, len(functions) + 1))
    
    extraConditions = []
    prepare_variables(mode, funcionesNumeros)

    if (echidna):
        start = time()
        logica_echidna_epa() if mode == Mode.epa else logica_echidna_states()
        end = time()
        print(f"El tiempo total transcurrido fue de: {round(end - start, 2)} segundos.")
        return 


    threadCount = 10
    threads = []

    dot = graphviz.Digraph(comment='Prueba')

    preconditionsThreads = preconditions
    preconditionsThreads = np.array_split(preconditionsThreads, threadCount)
    statesThreads = states
    statesThreads = np.array_split(statesThreads, threadCount)
    extraConditionsThreads = extraConditions
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.array_split(extraConditions, threadCount)

    if time_opt == False:
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
    if time_opt == False:
        print("Length")
        print(len(preconditionsThreads))
    if len(preconditionsThreads) > 30:
        if time_opt == False:
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
sys.path.append("/Users/iangrinspan/Documents/1C2023/Beca/verisol-echidna/verisol-test-main/Configs")

if __name__ == "__main__":
    global mode, config, verbose, time_opt
    epaMode = False
    statesMode = False
    echidna = False
    configFile = sys.argv[1]
    print(f"Config file: {configFile}")
    print(f"Flag: {sys.argv[2]}")
    verbose = False
    time_opt = False
    
    if (len(sys.argv) > 2) and sys.argv[2] == "-echidna":
        echidna = True 
        mode = Mode.states
        config = __import__(configFile, level=0)
        main()

    else:
        if len(sys.argv) > 2 and sys.argv[2] == "-v":
            verbose = True
        if len(sys.argv) > 2 and sys.argv[2] == "-t":
            time_opt = True
        if len(sys.argv) > 3 and sys.argv[3] == "-e":
            epaMode = True
        if len(sys.argv) > 3 and sys.argv[3] == "-s":
            statesMode = True
        if len(sys.argv) > 3 and sys.argv[3] == "-a":
            statesMode = True
            epaMode = True
        if len(sys.argv) > 4 and sys.argv[4] == "-echidna":
            echidna = True
    
    if epaMode:
        mode = Mode.epa
        print(configFile)
        config = __import__(configFile, level=0)
        main()

    if statesMode:
        config = __import__(configFile, level=0)
        mode = Mode.states
        main()

