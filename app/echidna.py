from time import time
import sys

sys.path.append("../")
sys.path.append("modules/")
from file_manager import create_directory
from contract_creation import EchidnaContractCreator as ContractCreator
from tools_runners import EchidnaRunner
from tools_configs import EchidnaConfigData
from contract_config import ConfigVariables, ConfigImporter, Mode
from output import Graph, OutputPrinter



# Función que se encarga de crear los contratos y correrlos.
def create_run_and_print_on(config_variables):

    init_contract_to_run = ContractCreator(config_variables).create_init_contract()
    transitions_contracts_to_run = ContractCreator(config_variables).create_multiple_transitions_contracts(8)

    init_config_params = EchidnaConfigData(testLimit=TEST_LIMIT, workers=16, format="text")
    transitions_config_params = EchidnaConfigData(testLimit=TEST_LIMIT, workers=16, format="text")

    init_failed = EchidnaRunner(config_variables, init_contract_to_run, init_config_params).run_contract()
    tr_failed = []
    for contract in transitions_contracts_to_run:
        tr_failed += EchidnaRunner(config_variables, contract, transitions_config_params).run_contract()

    OutputPrinter(config_variables).print_results(tr_failed, init_failed)
    Graph(config_variables).build_graph(tr_failed, init_failed)



def logica_echidna_epa(config_variables):
    config_variables.dir_name = f"../results/echidna_output_A/{config_variables.contractFileName[:-4]}/{TEST_LIMIT}/epa"  # -4 para sacarle el .sol
    config_variables.dir = create_directory(config_variables.dir_name)
    # discard_unreachable_states(dir)
    create_run_and_print_on(config_variables)


def logica_echidna_states(config_variables):
    config_variables.dir_name = f"../results/echidna_output_A/{config_variables.contractFileName[:-4]}/{TEST_LIMIT}/states"  # -4 para sacarle el .sol
    config_variables.dir = create_directory(config_variables.dir_name)
    create_run_and_print_on(config_variables)


def main():
    config_variables = ConfigVariables()
    importer = ConfigImporter(config, config_variables)

    importer.import_config_variables()

    funcionesNumeros = list(range(1, len(config_variables.functions) + 1))

    importer.prepare_variables(mode, funcionesNumeros)
    config_variables.mode = mode

    start = time()
    logica_echidna_epa(config_variables) if mode == Mode.epa else logica_echidna_states(config_variables)
    end = time()
    print(f"The total time was: {round(end - start, 2)} seconds. \n")
    return


tool_output = "Found a counterexample"
echidna_output = "failed!"

# Cambiar este path según dónde se ejecute
sys.path.append("/Users/iangrinspan/Documents/2C2023/Beca/verisol-echidna/app/Configs")

if __name__ == "__main__":
    global mode, config, TEST_LIMIT
    epaMode = False
    statesMode = False
    configFile = sys.argv[1]

    if len(sys.argv) > 2 and sys.argv[2] == "-e":
        epaMode = True
    if len(sys.argv) > 2 and sys.argv[2] == "-s":
        statesMode = True
    if len(sys.argv) > 3:
        TEST_LIMIT = int(sys.argv[3])

    if epaMode:
        mode = Mode.epa
        config = __import__(configFile, level=0)
        main()

    if statesMode:
        mode = Mode.states
        config = __import__(configFile, level=0)
        main()
