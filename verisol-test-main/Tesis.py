import itertools
import subprocess
import inspect
import os
import shutil
import numpy as np
import graphviz
from threading import Thread
import time
from time import sleep
from enum import Enum
import sys
from dataclasses import dataclass, fields, asdict

sys.path.append('../')
from file_manager import create_directory, delete_directory, create_file, write_file, write_file_from_string, \
    read_from_file


class ThreadsEchidna:
    def __init__(self, dir):
        self.threads = None
        self.dir = dir
        self.thread_count = len(preconditions)

    def create_and_run_transitions_threads(self):
        preconditions_require = np.array_split(preconditions, self.thread_count)
        results = [None] * self.thread_count
        self.threads = [Thread(target=self.run_transitions,
                          args=(preconditions_require[i], states, preconditions, extraConditions, i, results))
                            for i in range(self.thread_count)]
        self.start_and_join_all_threads()
        return self.join_transitions_results(results)

    def create_and_run_init_threads(self):
        self.thread_count = len(config.constructors)
        results = [None] * self.thread_count
        self.threads = [Thread(target=self.run_inits, args=(i, results)) for i in range(self.thread_count)]
        self.start_and_join_all_threads()
        return self.join_transitions_results(results)

    def run_transitions(self, preconditions_require, states, preconditions, extraConditions, thread_id, results):
        tr_contract = ContractCreator(self.dir).create_transitions_contract(preconditions_require, states, preconditions, extraConditions, thread_id)
        tr_failed = EchidnaRunner(self.dir).run_contract(tr_contract)
        results[thread_id] = tr_failed

    def run_inits(self, thread_id, results):
        init_contract = ContractCreator(self.dir).create_init_contract()
        init_failed = EchidnaRunner(self.dir).run_init_contract(init_contract, thread_id)
        results[thread_id] = init_failed

    def join_transitions_results(self, results):
        tr_failed = [elem for result in results for elem in result]
        # init_failed = [elem for result in results for elem in result[1]]
        return tr_failed  #, init_failed

    def start_and_join_all_threads(self):
        self.start_all_threads()
        self.join_all_threads()

    def start_all_threads(self):
        for thread in self.threads:
            thread.start()
            sleep(2)

    def join_all_threads(self):
        for thread in self.threads:
            thread.join()


class EchidnaRunner:
    def __init__(self, directory):
        self.directory = directory

    def run_init_contract(self, contract, constructor_index):
        result = self.set_up_and_run(contract, contractName, True, constructor_index)
        return self.process_output(result)

    def run_contract(self, contract):
        result = self.set_up_and_run(contract, contractName)
        return self.process_output(result)

    def set_up_and_run(self, filename_temp, contract_name, init=False, index=0):
        tool_command = self.create_echidna_command(filename_temp, contract_name, self.directory)
        self.hardcode_constructor_parameters(filename_temp, index)
        if init:
            self.transform_contract_for_init(filename_temp)
        print(f"El comando a correr es {tool_command} en el directorio {self.directory}")
        result = self.run_echidna_command(tool_command)
        write_file_from_string(f"resultados_echidna_{init}.txt", result)
        return result

    def run_echidna_command(self, command_to_run):
        result = subprocess.run([command_to_run, ""], shell=True, cwd=self.directory, stdout=subprocess.PIPE)
        return result.stdout.decode('utf-8')

    # Puede que haya que generalizar esta función
    def hardcode_constructor_parameters(self, fileNameTemp, constructor_index):
        input_file = open(fileNameTemp, 'r').readlines()
        new_constructor_lines = self.build_constructor_from_config(constructor_index)
        constructor_start_line, constructor_end_line = self.get_constructor_start_and_end_lines(input_file)
        input_file[constructor_start_line:constructor_end_line] = list(map(lambda x: x + "\n", new_constructor_lines))
        write_file_from_string(fileNameTemp, input_file)
        return

    def build_constructor_from_config(self, index):
        return ["constructor() public {"] + config.constructors[index] + ["}"]

    def get_constructor_start_and_end_lines(self, input_file):
        constructor_start_line = next(
            (index for index, line in enumerate(input_file) if line.strip().startswith('constructor(')), None)
        constructor_end_line = next(
            (index for index, line in enumerate(input_file[constructor_start_line:]) if line.strip() == '}'),
            None) + constructor_start_line + 1
        return constructor_start_line, constructor_end_line

    def get_constructor_from_file(self, inputfile): # No se usa.
        # inputfile es una lista de strings. tiene uno por cada línea del contrato.
        res = ""
        for i in range(len(inputfile)):
            line = inputfile[i]
            if ('constructor(' in line):
                while True:
                    res += line
                    if ('}' in line):  # Si tenemos un constructor que haga algo adentro con llaves {}, cambiar esto.
                        return inspect.cleandoc(res).replace('  ', '')
                    i += 1
                    line = inputfile[i]
        raise NameError('No se encontró el constructor del contrato.')

    def transform_contract_for_init(self, fileNameTemp):
        new_contract_body = self.remove_everything_after_constructor(fileNameTemp)
        write_file_from_string(fileNameTemp, new_contract_body)

    def remove_everything_after_constructor(self, fileNameTemp):
        lines = open(fileNameTemp, 'r').readlines()
        constructor_line = next((index for index, line in enumerate(lines) if line.strip().startswith('constructor(')),
                                None)
        end_line = next((index for index, line in enumerate(lines[constructor_line:]) if line.strip() == '}'), None)
        lines = lines[:constructor_line + end_line + 1]
        lines.append("}")
        return lines

    def create_echidna_command(self, fileNameTemp, contractName, directory):
        config_file = self.create_config_file(directory, ConfigFileData())  # acá habría que pasarle parámetros.
        commandResult = f"echidna {fileNameTemp} --contract {contractName} --config {config_file}"
        return commandResult

    def create_config_file(self, directory, config_file_data):
        new_file_name = f"{directory}/config.yaml"
        newfile = open(new_file_name, "w")
        for key, value in asdict(config_file_data).items():
            newfile.write(f"{key}: {value} \n")
        newfile.close()
        return new_file_name

    def process_output(self, tool_result):
        tests_that_failed = []
        for line in tool_result.splitlines():
            if "failed!" in line:
                failed_test = line.split()[0][2:-3]  # vcIxJxK(): -> IxJxK.
                i, j, k = get_params_from_function_name(failed_test)
                tests_that_failed.append([i, j, k])
        return tests_that_failed


class ContractCreator:
    def __init__(self, directory):
        self.directory = directory

    def create_all_contracts(self): # no se usa
        return self.create_transitions_contract(), self.create_init_contract()

    def create_transitions_contract(self, preconditions_require, states, preconditions, extraConditions, thread_id):
        fileNameTemp = create_file(f"_transitions_{thread_id}", self.directory, fileName, contractName)
        body, fuctionCombinations = get_valid_transitions_output(preconditions_require, preconditions,
                                                                 extraConditions, extraConditions, functions, states)
        print(f"functionCombinations: {fuctionCombinations}")
        write_file(fileNameTemp, body, contractName)
        return fileNameTemp

    def create_init_contract(self):
        fileNameTemp = create_file("_init", self.directory, fileName, contractName)
        body, fuctionCombinations = get_init_output(preconditions, extraConditions)
        write_file(fileNameTemp, body, contractName)
        return fileNameTemp


@dataclass
class ConfigFileData: # Tiene cosas hardcodeadas para crowdfunding
    maxValue: int = 7
    testLimit: int = 100000
    shrinkLimit: int = 0
    balanceContract: int = 0
    testMode: str = 'assertion'
    format: str = 'text'


class Printer:
    def print_results(self, transition_tests_that_failed, init_tests_that_failed):
        self.print_failed_tests(transition_tests_that_failed)
        self.print_failed_tests(init_tests_that_failed, True)
        print(f"- Init states found: {init_tests_that_failed} (count: {len(init_tests_that_failed)}) \n "
              f"- Transitions found: {transition_tests_that_failed} (count: {len(transition_tests_that_failed)})")

    def print_failed_tests(self, tests_that_failed, init=False):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], states)}")
        else:
            for test in tests_that_failed:
                print_output(test[0], test[2], test[1], states,
                             states)  # print_output recibe como segundo param la función y tercero el assert.


class GraphManager:
    def __init__(self, nombre):
        self.graph = graphviz.Digraph(comment=nombre)
        self.nombre = nombre

    def build_graph(self, transition_tests_that_failed, init_tests_that_failed):
        self.add_failed_tests_init(init_tests_that_failed)
        self.add_failed_tests_transition(transition_tests_that_failed)
        self.graph.render("output_echidna/graph/" + self.nombre)

    def add_failed_tests_init(self, tests_that_failed):
        output = "Desde el constructor, se puede llegar a: "
        for test in tests_that_failed:
            self.add_init_node_to_graph(test)

    def add_failed_tests_transition(self, tests_that_failed):
        for test in tests_that_failed:
            add_node_to_graph(test[0], test[1], test[2], states, states, self.graph)

    def add_init_node_to_graph(self, init_test):  # ian
        global states
        print(f"El test a agregar al grafo de init es: {init_test}")
        indexPreconditionAssert = init_test[0]
        self.graph.node("init", "init")
        self.graph.node(combinationToString(states[indexPreconditionAssert]),
                        output_combination(indexPreconditionAssert, states))
        self.graph.edge("init", combinationToString(states[indexPreconditionAssert]), "constructor")


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
            if len(partialResult) > i and partialResult[i] >= 0:
                indice = partialResult[i]
                paddingResult[indice - 1] = indice
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
                    elif statePreconditions[iNumber] == x and not ((idx + 1) in combination):
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
                precondition += statePreconditions[number - 1]
            else:
                precondition += "!(" + statePreconditions[number - 1] + ")"
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
            command += "/ignoreMethod:vc" + combi + "@" + contractName + " "
    return command


def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require(" + condition + ");\n"
    return extraConditionOutput


def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre,
                                extraConditionPost):
    if mode == Mode.epa:
        precondictionFunction = functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "require(" + preconditionRequire + ");\nrequire(" + precondictionFunction + ");\n" + extraConditionOutputPre + function + "\n" + "assert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput


def output_init_function(preconditionAssert, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    verisolFucntionOutput = extraConditionOutput + "assert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput


def output_valid_state(preconditionRequire, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    return "require(" + preconditionRequire + ");\n" + extraConditionOutput + "assert(false);\n"


def output_combination(indexCombination, tempCombinations):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            if mode == Mode.epa:
                output += functions[function - 1] + "\n"
            else:
                output += statesNames[function - 1]

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
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert,
                                                          indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
                elif mode == Mode.states:
                    functionName = get_temp_function_name(preconditions.index(preconditionRequire), indexPreconditionAssert, indexFunction) # cambié esta línea.
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert,
                                                                 indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames


def get_init_output(preconditions, extraConditions):
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0", "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_init_function(preconditionAssert, extraConditions[indexPreconditionAssert])
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames


def try_preconditions(tool, tempFunctionNames, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp,
                      arg):
    global txBound
    preconditionsTemp2 = []
    statesTemp2 = []
    extraConditionsTemp2 = []

    for functionName in tempFunctionNames:
        if time_opt == False:
            print(functionName + "---" + str(arg))
        indexPreconditionRequire, _, _ = get_params_from_function_name(functionName)
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
            dot.node(combinationToString(states[indexPreconditionAssert]),
                     output_combination(indexPreconditionAssert, states))
            dot.edge("init", combinationToString(states[indexPreconditionAssert]), "constructor")


def try_command(tool, temp_function_name, tempFunctionNames, final_directory, txBound):
    global tool_output, verbose
    command = getToolCommand(temp_function_name, tool, tempFunctionNames, txBound)
    # print(command)
    result = subprocess.run([command, ""], shell=True, cwd=final_directory, stdout=subprocess.PIPE)
    # if verbose:
    #    print(result.stdout.decode('utf-8'))
    return tool_output in str(result.stdout.decode('utf-8'))


def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)


def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination):
    output = "Desde el estado: " + output_combination(indexPreconditionRequire, combinations) + "\nHaciendo: " + \
             functions[indexFunction] + "\nLlegas al estado: " + output_combination(indexPreconditionAssert,
                                                                                    fullCombination) + "\n---------"
    print(output)


def add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states, dot):
    global functions
    dot.node(combinationToString(statesTemp[indexPreconditionRequire]),
             output_combination(indexPreconditionRequire, statesTemp))
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge(combinationToString(statesTemp[indexPreconditionRequire]),
             combinationToString(states[indexPreconditionAssert]), label=functions[indexFunction])


def reduceCombinations(arg):
    global fileName, preconditionsThreads, statesThreads, extraConditionsThreads, contractName
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    extraConditionsTemp = extraConditionsThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory, fileName, contractName)
    body, fuctionCombinations = get_valid_preconditions_output(preconditionsTemp, extraConditionsTemp)
    write_file(fileNameTemp, body, contractName)
    tool = "Verisol " + fileNameTemp + " " + contractName
    preconditionsTemp2, statesTemp2, extraConditionsTemp2 = try_preconditions(tool, fuctionCombinations,
                                                                              final_directory, statesTemp,
                                                                              preconditionsTemp, extraConditionsTemp,
                                                                              arg)
    preconditionsThreads[arg] = preconditionsTemp2
    statesThreads[arg] = statesTemp2
    extraConditionsThreads[arg] = extraConditionsTemp
    if not verbose:
        delete_directory(final_directory)


def validCombinations(arg):  # arg = [i]
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


def prepare_variables(mode, funcionesNumeros):  # ian
    global states, preconditions, extraConditions, statesThreads, preconditionsThreads, extraConditionsThreads
    if mode == Mode.epa:
        states = getCombinations(funcionesNumeros)
        preconditions = getPreconditions(funcionesNumeros)
        try:
            extraConditions = [config.epaExtraConditions for i in range(len(states))]
        except:
            extraConditions = ["true" for i in range(len(states))]
    else:
        preconditions = statePreconditionsModeState
        states = statesModeState
        try:
            extraConditions = config.statesExtraConditions
        except:
            extraConditions = ["true" for i in range(len(states))]
    preconditionsThreads = preconditions
    statesThreads = states
    extraConditionsThreads = extraConditions



def main():
    global config, dot, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions
    make_global_variables(config)

    funcionesNumeros = list(range(1, len(functions) + 1))

    extraConditions = []
    prepare_variables(mode, funcionesNumeros)

    if (echidna):
        start = time.time()
        dir = create_directory('_echidna')
        tr_failed = ThreadsEchidna(dir).create_and_run_transitions_threads()
        init_failed = ThreadsEchidna(dir).create_and_run_init_threads()
        Printer().print_results(tr_failed, init_failed)
        GraphManager("echidna").build_graph(tr_failed, init_failed)
        end = time.time()
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

    if time == False:
        print("Length")
        print(len(preconditions))

    if mode == Mode.epa:
        for i in range(threadCount):
            thread = Thread(target=reduceCombinations, args=[i])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()

    preconditionsThreads = [x for x in preconditionsThreads if x.size != 0]
    statesThreads = [x for x in statesThreads if x.size != 0]
    extraConditionsThreads = [x for x in extraConditionsThreads if x.size != 0]

    preconditionsThreads = np.concatenate(preconditionsThreads)
    statesThreads = np.concatenate(statesThreads)
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.concatenate(extraConditionsThreads)
    states = statesThreads
    preconditions = preconditionsThreads
    extraConditions = extraConditionsThreads
    # Acá vuelven a quedar exactamente a como estaban en el config
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
        divideThreads = int(divideCount / threadCount)
        moduleThreadsConut = divideCount % threadCount

    preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
    statesThreads = np.array_split(statesThreads, divideCount)
    extraConditionsThreads = np.array_split(extraConditionsThreads, divideCount)

    for y in range(divideThreads):
        threads = []
        for i in range(realThreadCount):
            thread = Thread(target=validCombinations, args=[i + y * threadCount])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()
    threads = []

    for index in range(moduleThreadsConut):
        thread = Thread(target=validCombinations, args=[threadCount * divideThreads + index])
        thread.start()
        threads.append(thread)

    thread = Thread(target=validInit, args=[len(preconditionsThreads)])
    thread.start()
    threads.append(thread)
    for thread in threads:
        thread.join()
    print("ENDED")
    tempFileName = configFile.replace('Config', '')
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

    if epaMode:
        mode = Mode.epa
        print(configFile)
        config = __import__(configFile, level=0)
        main()

    if statesMode:
        config = __import__(configFile, level=0)
        mode = Mode.states
        main()
