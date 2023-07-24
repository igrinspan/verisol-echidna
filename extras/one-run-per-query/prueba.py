import itertools
import subprocess
import inspect
import os
import shutil
import re
import numpy  as np
import graphviz
from threading import Thread
from time import time, sleep
from enum import Enum
import sys
from dataclasses import dataclass, fields, asdict
sys.path.append('../')
sys.path.append('../../verisol-test-main/')
from file_manager import create_directory, delete_directory, create_file, write_file, write_file_from_string, read_from_file, create_config_file

@dataclass
class EchidnaConfigFileData:
    testLimit: int = 50000
    balanceContract: int = 0
    workers: int = 1
    maxValue: int = 100000000000000000000
    testMode: str = 'assertion'
    prefix: str = 'echidna_'
    format: str = 'Null'
    shrinkLimit: int = 0
    seqLen: int = 100
    filterBlacklist: str = 'false'
    filterFunctions: str = '[]'

# # list of methods to filter
# filterFunctions: []
# # by default, blacklist methods in filterFunctions
# filterBlacklist: true

class ConfigImporter:
    def __init__(self, config):
        self.contract_config_file = config

    def make_global_variables(self):
        global fileName, contractFileName, preconditions, statesNames, functions, statePreconditions, contractName, functionVariables, functionPreconditions, statePreconditionsModeState, statesModeState
        c = self.contract_config_file
        fileName = c.fileName
        contractFileName = c.fileName
        functions = c.functions
        statePreconditions = c.statePreconditions
        statesNames = c.statesNamesModeState
        statePreconditions = c.statePreconditions
        contractName = c.contractName
        functionVariables = c.functionVariables
        functionPreconditions = c.functionPreconditions
        statePreconditionsModeState = c.statePreconditionsModeState
        statesModeState = c.statesModeState

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

# Pure
def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

# Pure
def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require("+condition+");\n"
    return extraConditionOutput 

def functionOutput(number):
    return "\tfunction vc" + number + "(" + functionVariables + ") payable public {"

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre, extraConditionPost):
    if mode == Mode.epa:
        precondictionFunction = functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "\t\trequire("+preconditionRequire+");\n\t\trequire("+precondictionFunction+");\n\t\t" + extraConditionOutputPre + "\t\t" + function + "\n"  + "\t\tassert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput

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


class ContractCreator:
    def __init__(self, directory):
        self.directory = directory

    # Le agregué un a variable más de salida, functionNames.
    def create_transitions_contract(self, pre_require, states, pre_assert, extra_cond):
        print("---", self.directory, fileName, contractName)
        file_name_temp = create_file("transitions", self.directory, fileName, contractName)
        body, functionNames = get_valid_transitions_output(pre_require, pre_assert, extra_cond, extra_cond, functions, states)
        body = self.clean_true_requires(body)
        write_file(file_name_temp, body, contractName)
        return file_name_temp, functionNames
 
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
        change_status = "\t\t\t\thas_initialized = true;\n"
        start, end = self.get_constructor_start_and_end_lines(new_lines)
        new_lines = new_lines[:end-1] + [change_status] + new_lines[end-1:]
        # 4. Hacemos que el constructor sea una función común.
        linea_a_cambiar = new_lines[start] # constructor(uint _max_block, uint _goal, uint _blockNumber) public payable {
        linea_a_cambiar = linea_a_cambiar.replace("constructor", "function my_constructor")
        linea_a_cambiar = linea_a_cambiar.replace(")", ") hasNotInitialized", 1)
        new_lines[start] = linea_a_cambiar

        write_file_from_string(contract_filename, new_lines)

class EchidnaRunner:
    def __init__(self, dir, contract, config_file_params):
        self.directory = dir
        self.contract = contract
        self.config_file_params = config_file_params

    def run_contract(self): 
        start = time()
        result = self.set_up_and_run()
        end = time()
        print(f'The contract took {round(end - start, 2)} seconds to run...')
        return self.process_output(result)
    
    def set_up_and_run(self):
        tool_command = self.create_echidna_command()
        #print(f"El comando a correr es {tool_command} en el directorio {self.directory}")
        result = self.run_echidna_command(tool_command)
        return result

    def run_echidna_command(self, command_to_run):
        result = subprocess.run([command_to_run, ""], shell = True, cwd=self.directory, stdout=subprocess.PIPE)
        return result.stdout.decode('utf-8')

    def process_output(self, tool_result):
        tests_that_failed = []
        for line in tool_result.splitlines():
            if "failed!" in line:
                match = re.search(r'vc(\w+)\(', line)
                if match:
                    failed_test = match.group(1)  # vcIxJxK(¡): -> IxJxK.
                    print(failed_test)
                else:
                    continue  # Por si falla un assert que no tiene que ver con los tests
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


def create_run_and_print_on(dir, dir_name):
    transitions_contract_to_run, function_names = ContractCreator(dir).create_transitions_contract(preconditions, states, preconditions, extraConditions)

    ContractCreator(dir).change_for_constructor_fuzzing(transitions_contract_to_run)

    # Acá debo obtener las funciones a las que le quiero hacer blacklist. 
    # Primero debo conocer TODOS los nombres de funciones, e ir iterándolos.
    function_name = function_names[0]
    #for function_name in function_names:
    blacklist = [name for name in function_names if name != function_name]
    transitions_config_params = EchidnaConfigFileData(
        testLimit=test_limit, 
        workers=16, 
        format='text',
        filterBlacklist='true',
        filterFunctions=f'{blacklist}'
      )
    tr_failed = EchidnaRunner(dir, transitions_contract_to_run, transitions_config_params).create_config_file()
    return
    


def logica_echidna_epa():
    dir_name = f'output' # -4 para sacarle el .sol
    dir = create_directory(dir_name)    
    create_run_and_print_on(dir, dir_name)
    return

def main():
    global config, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions

    print(config)

    importer = ConfigImporter(config)
    importer.make_global_variables()

    extraConditions = []
    funcionesNumeros = list(range(1, len(functions) + 1))
    
    importer.prepare_variables(mode, funcionesNumeros)


    if (echidna):
        start = time()
        logica_echidna_epa()
        end = time()
        print(f"The total time was: {round(end - start, 2)} seconds. \n")
        return 


states = []
preconditions = []
tool_output = "Found a counterexample"
echidna_output = "failed!"
class Mode(Enum):
    epa = "epa"
    states = "states"

# Cambiar este path según dónde se ejecute
sys.path.append("/Users/iangrinspan/Documents/1C2023/Beca/verisol-echidna/verisol-test-main/Configs")

if __name__ == "__main__":
    global mode, config, verbose, time_opt, test_limit
    epaMode = True
    statesMode = False
    echidna = True
    configFile = "CrowdfundingTimeReentrancyConfig"
    verbose = False
    time_opt = False

    test_limit = 10_000
    
    if epaMode:
        mode = Mode.epa
        config = __import__(configFile, level=0)
        main()


