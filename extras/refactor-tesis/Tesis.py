import os
import numpy  as np
from threading import Thread
from time import time, sleep
from enum import Enum
import sys
sys.path.append('../')
sys.path.append('modules/')
from contract_creator import ContractCreator
from echidna_runner import EchidnaRunner
from echidna_config import EchidnaConfigFileData
from contract_config import ConfigVariables, ConfigImporter
from output_printer import OutputPrinter
from graph import Graph



def create_directory(index):
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, str(index))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)
    return final_directory


class Mode(Enum):
    epa = "epa"
    states = "states"


# Modo Epa.
def discard_unreachable_states(dir):
    contract_created = ContractCreator(dir).create_combinations_contract(preconditions, extraConditions) 
    ContractCreator(dir).change_for_constructor_fuzzing(contract_created)
    
    # Si quisiera usar property en vez de assertion, puedo silenciar el change_for_constructor_fuzzing
    # y cambiar a testMode='property' y prefix='vc' en el config_file_params.
    config_file_params = EchidnaConfigFileData(testLimit=TEST_LIMIT, workers=16, format='text')
    
    failed_tests = EchidnaRunner(dir, contract_created, config_file_params).run_contract()
    update_global_variables_based_on(failed_tests)

# Modo Epa (en discard unreachable states).
def update_global_variables_based_on(failed_tests, config_variables):
    print(f"A update_global_variables_based_on le llegaron: {failed_tests}")
    preconditionsTemp = []
    statesTemp = []
    extraConditionsTemp = []
    for function in failed_tests:
        precondition_require_index = function[0]
        preconditionsTemp.append(preconditions[precondition_require_index])
        statesTemp.append(states[precondition_require_index])
        extraConditionsTemp.append(extraConditions[precondition_require_index])
    config_variables.preconditions = preconditionsTemp
    config_variables.states = statesTemp
    config_variables.extraConditions = extraConditionsTemp


# Funcion que se encarga de crear el contrato y correrlo.
def create_run_and_print_on(config_variables):

    pre = config_variables.preconditions
    states = config_variables.states
    extraConditions = config_variables.extraConditions

    init_contract_to_run = ContractCreator(config_variables).create_init_contract()
    transitions_contract_to_run = ContractCreator(config_variables).create_transitions_contract(pre, states, pre, extraConditions)
    

    init_config_params = EchidnaConfigFileData(testLimit=TEST_LIMIT, workers=16, format='text')
    transitions_config_params = EchidnaConfigFileData(testLimit=TEST_LIMIT, workers=16, format='text')


    init_failed = EchidnaRunner(config_variables, init_contract_to_run, init_config_params).run_contract()
    tr_failed = EchidnaRunner(config_variables, transitions_contract_to_run, transitions_config_params).run_contract()

    

    OutputPrinter(config_variables).print_results(tr_failed, init_failed)
    Graph(config_variables).build_graph(tr_failed, init_failed)
    return

# TODO. Lo mismo pero corriendo una función a la vez
def create_run_and_print_on_2(dir, dir_name):
    print("TODO")
    return

# Lo estoy corriendo sin el discard_unreachable_states.
def logica_echidna_epa():
    dir_name = f'echidna_output/{contractFileName[:-4]}/{TEST_LIMIT}/epa' # -4 para sacarle el .sol
    dir = create_directory(dir_name)
    # discard_unreachable_states(dir)
    create_run_and_print_on(dir, dir_name)


def logica_echidna_states(config_variables):
    config_variables.dir_name = f'echidna_output/{config_variables.contractFileName[:-4]}/{TEST_LIMIT}/states' # -4 para sacarle el .sol
    config_variables.dir = create_directory(config_variables.dir_name)
    create_run_and_print_on(config_variables)


def main():
    global config

    config_variables = ConfigVariables()
    importer = ConfigImporter(config, config_variables)
    
    importer.import_config_variables()

    config_variables.extraConditions = []
    funcionesNumeros = list(range(1, len(config_variables.functions) + 1))
    
    importer.prepare_variables(mode, funcionesNumeros)
    config_variables.mode = mode
    if (echidna):
        start = time()
        logica_echidna_epa(config_variables) if mode == Mode.epa else logica_echidna_states(config_variables)
        end = time()
        print(f"The total time was: {round(end - start, 2)} seconds. \n")
        return 

tool_output = "Found a counterexample"
echidna_output = "failed!"

# Cambiar este path según dónde se ejecute
sys.path.append("/Users/iangrinspan/Documents/1C2023/Beca/verisol-echidna/verisol-test-main/Configs")

if __name__ == "__main__":
    global mode, config, verbose, time_opt, TEST_LIMIT
    epaMode = False
    statesMode = False
    echidna = False
    configFile = sys.argv[1]
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
    if len(sys.argv) > 5:
        TEST_LIMIT = int(sys.argv[5])
    
    if epaMode:
        mode = Mode.epa
        config = __import__(configFile, level=0)
        main()

    if statesMode:
        config = __import__(configFile, level=0)
        mode = Mode.states
        main()

