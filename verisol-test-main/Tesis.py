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
from file_manager import create_directory, delete_directory, create_file, write_file, write_file_from_string, read_from_file, create_config_file


class Mode(Enum):
    epa = "epa"
    states = "states"



def combinationToString(combination):
    output = ""
    for i in combination:
        output += str(i) + "-"
    return output


def functionOutput(number):
    return "\tfunction vc" + number + "(" + functionVariables + ") payable public {"


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

# Pure
def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

# Pure
def get_params_from_function_name(temp_function_name):
    array = temp_function_name.split('x')
    return int(array[0]), int(array[1]), int(array[2])


def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination):
    output ="Desde el estado: "+ output_combination(indexPreconditionRequire, combinations) + "\nHaciendo: " + functions[indexFunction] + "\nLlegas al estado: " + output_combination(indexPreconditionAssert, fullCombination) + "\n---------"
    #if time == False:
    print(output)


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
                if line[:2] != "vc": continue # Por si falla un assert que no tiene que ver con los tests
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

    def create_transitions_contract(self, pre_require, states, pre_assert, extra_cond):
        file_name_temp = create_file("transitions", self.directory, fileName, contractName)
        body, _ = get_valid_transitions_output(pre_require, pre_assert, extra_cond, extra_cond, functions, states)
        body = self.clean_true_requires(body)
        write_file(file_name_temp, body, contractName)
        return file_name_temp

    def create_init_contract(self):
        filename_temp = create_file("init", self.directory, fileName, contractName)
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
        fileNameTemp = create_file('combinations', self.directory, fileName, contractName)
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
        require = "\t\t\trequire(!has_initialized);\n"
        change_status = "\t\t\thas_initialized = true;\n"
        start, end = self.get_constructor_start_and_end_lines(new_lines)
        new_lines = new_lines[:start+1] + [require] + new_lines[start+1:end-1] + [change_status] + new_lines[end-1:]
        # 4. Hacemos que el constructor sea una función común.
        linea_a_cambiar = new_lines[start] # constructor(uint _max_block, uint _goal, uint _blockNumber) public payable {
        linea_a_cambiar = linea_a_cambiar.replace("constructor", "function my_constructor")
        new_lines[start] = linea_a_cambiar

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
    def __init__(self, dir):
        self.directory = dir

    def print_results(self, transition_tests_that_failed, init_tests_that_failed):
        self.print_failed_tests(transition_tests_that_failed)
        self.print_failed_tests(init_tests_that_failed, True)
        write_file = open(f'{self.directory}/resultados.txt','a')
        write_file.write(f"\n --------------\n")
        write_file.write(f"Resultados de init:\n {init_tests_that_failed}\n\n")
        write_file.write(f"Resultados de transitions:\n {transition_tests_that_failed}\n\n")

    def print_transitions_results(self, failed_tests):
         print(f"Count transitions: {len(failed_tests)}\n")

    def print_init_results(self, failed_tests):
        print(f"Count init: {len(failed_tests)}\n")

    def print_failed_tests(self, tests_that_failed, init=False):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], states)}")
        else:
            for test in tests_that_failed:
                print_output(test[0], test[2], test[1], states, states) #print_output recibe como segundo param la función y tercero el assert.
        

class Graph:
    def __init__(self, dir):
        self.graph = graphviz.Digraph(comment=contractName)
        self.dir = dir

    def build_graph(self, transition_tests_that_failed, init_tests_that_failed):
        self.add_failed_tests_init(init_tests_that_failed)
        self.add_failed_tests_transition(transition_tests_that_failed)
        self.graph.render(f"{self.dir}/graph/{contractName}{mode}")

    def add_failed_tests_init(self, tests_that_failed):
        for test in tests_that_failed:
            self.add_init_node_to_graph(test)

    def add_failed_tests_transition(self, tests_that_failed):
        for test in tests_that_failed:
            self.add_node_to_graph(test[0], test[1], test[2], states)

    def add_node_to_graph(self, indexPreconditionRequire, indexPreconditionAssert, indexFunction, states):
        self.graph.node(combinationToString(states[indexPreconditionRequire]), output_combination(indexPreconditionRequire, states))
        self.graph.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
        self.graph.edge(combinationToString(states[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=functions[indexFunction])

    def add_init_node_to_graph(self, init_test): 
        global states
        indexPreconditionAssert = init_test[0]
        self.graph.node("init", "init")
        self.graph.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
        self.graph.edge("init",combinationToString(states[indexPreconditionAssert]), "constructor")



# Modo Epa.
def discard_unreachable_states(dir):
    contract_created = ContractCreator(dir).create_combinations_contract(preconditions, extraConditions) 
    ContractCreator(dir).change_for_constructor_fuzzing(contract_created)
    
    config_file_params = EchidnaConfigFileData(testLimit=10_000, workers=16)
    
    failed_tests = EchidnaRunner(dir, contract_created, config_file_params).run_contract()
    update_global_variables_based_on(failed_tests)

# Modo Epa.
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

# Funcion que se encarga de crear el contrato y correrlo.
def create_run_and_print_on(dir, dir_name):
    init_contract_to_run = ContractCreator(dir).create_init_contract()
    transitions_contract_to_run = ContractCreator(dir).create_transitions_contract(preconditions, states, preconditions, extraConditions)

    ContractCreator(dir).change_for_constructor_fuzzing(init_contract_to_run)
    ContractCreator(dir).change_for_constructor_fuzzing(transitions_contract_to_run)

    init_config_params = EchidnaConfigFileData(testLimit=50_000, workers=16)
    transitions_config_params = EchidnaConfigFileData(testLimit=50_000, workers=16)

    init_failed = EchidnaRunner(dir, init_contract_to_run, init_config_params).run_contract()
    tr_failed = EchidnaRunner(dir, transitions_contract_to_run, transitions_config_params).run_contract()
    OutputPrinter(dir).print_init_results(init_failed)
    OutputPrinter(dir).print_transitions_results(tr_failed)
    
    OutputPrinter(dir).print_results(tr_failed, init_failed)
    Graph(dir).build_graph(tr_failed, init_failed)


def logica_echidna_epa():
    dir_name = f'echidna_output/{contractName}/epa'
    dir = create_directory(dir_name)
    #discard_unreachable_states(dir)
    create_run_and_print_on(dir, dir_name)


def logica_echidna_states():
    dir_name = f'echidna_output/{contractName}/states'
    dir = create_directory(dir_name)
    create_run_and_print_on(dir, dir_name)


class ConfigImporter:
    def __init__(self, config):
        self.contract_config_file = config

    def make_global_variables(self):
        global fileName, preconditions, statesNames, functions, statePreconditions, contractName, functionVariables, functionPreconditions, statePreconditionsModeState, statesModeState
        c = self.contract_config_file
        fileName = "Contracts/" + c.fileName
        print(c.fileName)
        functions = c.functions
        statePreconditions = c.statePreconditions
        statesNames = c.statesNamesModeState
        statePreconditions = c.statePreconditions
        contractName = c.contractName
        functionVariables = c.functionVariables
        functionPreconditions = c.functionPreconditions
        statePreconditionsModeState = c.statePreconditionsModeState
        statesModeState = c.statesModeState
        print(c)

    # Se ejecuta en el main para cargar las variables preconditions, states y extraConditions, dependiendo del modo.
    def prepare_variables(self, mode, funcionesNumeros):
        global states, preconditions, extraConditions, statesThreads, preconditionsThreads, extraConditionsThreads
        if mode == Mode.epa :
            states = self.getCombinations(funcionesNumeros)
            preconditions = self.getPreconditions(funcionesNumeros)
            try:
                extraConditions = [self.contract_config_file.epaExtraConditions for i in range(len(states))]
            except:
                extraConditions = ["true" for i in range(len(states))]
        else :
            preconditions = statePreconditionsModeState
            states = statesModeState
            try:
                extraConditions = self.contract_config_file.statesExtraConditions
            except:
                extraConditions = ["true" for i in range(len(states))]
        preconditionsThreads = preconditions
        statesThreads = states
        extraConditionsThreads = extraConditions

    def getCombinations(self, funcionesNumeros):
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

    def getPreconditions(self, funcionesNumeros):
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


def main():
    global config, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions

    importer = ConfigImporter(config)
    importer.make_global_variables()

    extraConditions = []
    funcionesNumeros = list(range(1, len(functions) + 1))
    
    importer.prepare_variables(mode, funcionesNumeros)

    if (echidna):
        start = time()
        logica_echidna_epa() if mode == Mode.epa else logica_echidna_states()
        end = time()
        print(f"El tiempo total transcurrido fue de: {round(end - start, 2)} segundos.")
        return 


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

