from time import time
import sys
sys.path.append('../')
sys.path.append('modules/')
from file_manager import create_directory
from contract_creator import ContractCreator
from echidna_runner import EchidnaRunner
from echidna_config import EchidnaConfigFileData
from contract_config import ConfigVariables, ConfigImporter, Mode
from output_printer import OutputPrinter
from graph import Graph





# Función que se encarga de crear los contratos y correrlos.
def create_run_and_print_on_without_splitting(config_variables):
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


# Función que se encarga de crear los contratos y correrlos.
def create_run_and_print_on(config_variables):
    pre = config_variables.preconditions
    states = config_variables.states
    extraConditions = config_variables.extraConditions

    init_contract_to_run = ContractCreator(config_variables).create_init_contract()
    transitions_contracts_to_run = ContractCreator(config_variables).create_multiple_transitions_contracts(pre, states, pre, extraConditions)
       
    init_config_params = EchidnaConfigFileData(testLimit=TEST_LIMIT, workers=16, format='text')
    transitions_config_params = EchidnaConfigFileData(testLimit=TEST_LIMIT, workers=16, format='text')

    init_failed = EchidnaRunner(config_variables, init_contract_to_run, init_config_params).run_contract()
    tr_failed = []
    for contract in transitions_contracts_to_run:
        tr_failed += EchidnaRunner(config_variables, contract, transitions_config_params).run_contract()

    OutputPrinter(config_variables).print_results(tr_failed, init_failed)
    Graph(config_variables).build_graph(tr_failed, init_failed)
    return

def logica_echidna_epa(config_variables):
    config_variables.dir_name = f'echidna_output_A/{config_variables.contractFileName[:-4]}/{TEST_LIMIT}/epa' # -4 para sacarle el .sol
    config_variables.dir = create_directory(config_variables.dir_name)
    # discard_unreachable_states(dir)
    create_run_and_print_on(config_variables)


def logica_echidna_states(config_variables):
    config_variables.dir_name = f'echidna_output_A/{config_variables.contractFileName[:-4]}/{TEST_LIMIT}/states' # -4 para sacarle el .sol
    config_variables.dir = create_directory(config_variables.dir_name)
    create_run_and_print_on(config_variables)


def main():
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
sys.path.append("/Users/iangrinspan/Documents/2C2023/Beca/verisol-echidna/verisol-test-main/Configs")

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

