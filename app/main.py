import sys
from time import time
import os
from threading import Thread
import numpy as np

sys.path.append("../")
sys.path.append("Configs")
sys.path.append("modules/")

from file_manager import create_directory, create_directory_2
from contract_creation import ContractCreatorFactory, VerisolContractCreator
from tools_configs import EchidnaConfigData, VerisolConfigData
from tools_runners import EchidnaRunner, VerisolRunner
from contract_config import ConfigVariables, ConfigImporter, Mode, VerisolExecutionHistory
from output import Graph, OutputPrinter

class InvalidParametersException(Exception):
    pass


def create_config_variables():
    # Creamos el objeto en el que vamos a guardar las variables.
    config_variables = ConfigVariables()

    # Creamos el objeto que va a importar y hacer el setUp de esas variables. 
    config = __import__(contract_config, level=0)
    importer = ConfigImporter(config, config_variables)
    
    config_variables = importer.config_variables_setup(mode)
    return config_variables

def set_thread_and_contracts_count():
    # TODO: lógica de cantidad de contratos y threads.
    print("Implementar bien el set_thread_and_contracts_count")
    if tool == "echidna":
        threads_count = 16
        contracts_count = 8
    else: # tool == "verisol"
        threads_count = 8
        contracts_count = 8
    
    return threads_count, contracts_count

# Crea los threads y cada uno corre reduceCombinations.
def reduce_combinations(config_variables, threads_count, verisol_fails):
    preconditionsThreads = np.array_split(config_variables.preconditions, threads_count)
    statesThreads = np.array_split(config_variables.states, threads_count)
    extraConditionsThreads = []
    if len(config_variables.extraConditions) != 0:
        extraConditionsThreads = np.array_split(config_variables.extraConditions, threads_count)

    verisol_config = VerisolConfigData(4, None)

    count_pre_initial = len(config_variables.preconditions)
    # Corremos reduce_combinations.
    threads = []
    results = {'preconditions': [None]*threads_count, 'states': [None]*threads_count, 'extra_conditions': [None]*threads_count}
    for i in range(threads_count):
        thread = Thread(target = reduceCombinations, args = [config_variables, verisol_config, verisol_fails, preconditionsThreads[i], statesThreads[i], extraConditionsThreads[i], i, results])
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()

    # Actualizamos las variables (preconditions, states y extra_conditions).
    new_pre = [x for x in results["preconditions"] if x]
    new_states = [x for x in results["states"] if x]
    new_extra = [x for x in results["extra_conditions"] if x]

    new_pre = np.concatenate(new_pre)
    new_states = np.concatenate(new_states)
    if len(new_extra) != 0:
        new_extra = np.concatenate(new_extra)

    print("----Resultados luego de correr reduce_combinations----")
    print(new_pre)
    print(new_states)
    print(new_extra)

    config_variables.preconditions = new_pre
    config_variables.states = new_states
    config_variables.extraConditions = new_extra 

    # Guardamos los resultados en un archivo.
    count_pre_final = len(config_variables.preconditions)
    temp_dir = create_directory_2(config_variables.dir, "temp")
    temp_dir = os.path.join(temp_dir, contract_config + "-" + str(mode) + ".txt")
    f = open(temp_dir, "w")
    f.write(str(count_pre_initial) + "\n" + str(count_pre_final) + "\n" + str(len(config_variables.functions)))
    f.close()
    print("Acá termina el reduceCombinations de VeriSol.")

def reduceCombinations(config_variables, verisol_config, verisol_fails, preconditions, states, extra_conditions, thread_id, results):
    if len(preconditions) == 0:
        # print(f"Soy el thread {thread_id} y no tengo preconditions.")
        return

    # Llamamos a create_preconditions_contract(preconditions, extra_conditions, thread_id)
    preconditions_contract, queries_names = VerisolContractCreator(config_variables).create_preconditions_contract(preconditions, extra_conditions, thread_id) # type: ignore

    # Corremos el contrato con VeriSol. Sería el try_preconditions.
    tool_command = f"VeriSol {preconditions_contract} {config_variables.contractName}"
    final_directory = os.path.join(config_variables.dir, f"thread_{str(thread_id)}")

    new_pre, new_states, new_extra = VerisolRunner(config_variables, preconditions_contract, verisol_config, verisol_fails).try_preconditions(tool_command, queries_names, final_directory, states, preconditions, extra_conditions)

    if len(new_pre) != 0:
        results['preconditions'][thread_id] = new_pre
        results['states'][thread_id] = new_states
        results['extra_conditions'][thread_id] = new_extra

def validCombinations(config_variables, verisol_config, verisol_fails, contract_to_run, queries_names, thread_id, results):
    final_directory = os.path.join(config_variables.dir, f"thread_{str(thread_id)}")
    states = config_variables.states
    tool_command = f"VeriSol {contract_to_run} {config_variables.contractName}"
    resultado = VerisolRunner(config_variables, contract_to_run, verisol_config, verisol_fails).try_transaction(tool_command, queries_names, final_directory, states)
    results[thread_id] = resultado

def echidna_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, test_limit):
    init_failed = []
    tr_failed = []
    init_config_params = EchidnaConfigData(testLimit=test_limit, workers=16, format="text")
    transitions_config_params = EchidnaConfigData(testLimit=test_limit, workers=16, format="text")

    init_failed = EchidnaRunner(config_variables, init_contract_to_run, init_config_params).run_contract()
    for contract in transitions_contracts_to_run:
        tr_failed += EchidnaRunner(config_variables, contract, transitions_config_params).run_contract()

    return init_failed, tr_failed

def verisol_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, verisol_config, verisol_fails, threads_count, queries_per_contract, init_queries_names):
    
    # Valid INIT
    tool_command = f"VeriSol {init_contract_to_run} {config_variables.contractName}"
    init_failed = VerisolRunner(config_variables, init_contract_to_run, verisol_config, verisol_fails).try_init(tool_command, init_queries_names, config_variables.dir)
    # init_failed es algo como [(vc0x0x1, ""), (vc0x2x0, "?"), (vc0x2x1, ""), (vc3x0x2, "fail?")]

    # Valid COMBINATIONS.
    # - Ya tenemos los contratos organizados en threads. (hay contratos en el directorio thread_0, thread_1).
    threads = []
    results = [None] * threads_count

    for i in range(threads_count):
        queries_de_este_thread = queries_per_contract[i]
        if len(queries_de_este_thread) == 0:
            # print(f"Soy el thread {i} y no tengo queries para validCombinations.")
            continue
        contract_to_run = transitions_contracts_to_run[i]
        thread = Thread(target = validCombinations, args = [config_variables, verisol_config, verisol_fails, contract_to_run, queries_de_este_thread, i, results])
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()

    print(f"Init failed: {init_failed}")
    results_2 = list(filter(lambda item: item is not None, results))
    tr_failed = [item for sublist in results_2 for item in sublist]
    # print(f"Transitions failed: {results}")
    print(f"Transitions failed: {tr_failed}")

    total_to = "# Time Out: {}".format(str(verisol_fails.number_to))
    total_cfail1 = "# Corral Fail without trackvars: {}".format(str(verisol_fails.number_corral_fail))
    total_cfail2 = "# Corral Fail with trackvars: {}".format(str(verisol_fails.number_corral_fail_with_tackvars))
    
    print(total_to)
    print(total_cfail1)
    print(total_cfail2)

    return init_failed, tr_failed


def main():
    # Importamos y guardamos las variables (preconditions, states, functions, etc.)
    config_variables = create_config_variables()

    # Definimos dónde se van a guardar los resultados, tanto los contratos a correr como el grafo.
    # Agrego budget para diferenciar ejecuciones de la misma tool. En echidna es test_limit y en verisol es txbound.
    config_variables.dir_name = f"../results/{tool}_output/{config_variables.contractFileName[:-4]}/{mode.name}/{budget}"
    config_variables.dir = create_directory(config_variables.dir_name) # devuelve el path completo.

    threads_count, contracts_count = set_thread_and_contracts_count() # Para el reduce_combinations.

    # En VeriSol, creamos un contrato por thread. O sea contracts_count = threads_count.
    # En Echidna, creamos una cierta cantidad de contratos dependiendo de la cantidad de queries que tengamos. (ej: > 100 queries).

    # Hacemos lo de reduce_combinations (sólo con VeriSol?) y actualizamos variables.
    verisol_fails = VerisolExecutionHistory()
    if mode == Mode.epa: # and tool == "verisol": 
        reduce_combinations(config_variables, threads_count, verisol_fails)

    # Volvemos a calcular la cantidad de queries para definir cuántos contratos distintos vamos a correr.
    threads_count, contracts_count = set_thread_and_contracts_count()

    # Creamos los contratos.
    contract_creator = ContractCreatorFactory().create_contract_creator(tool, config_variables)

    init_contract_to_run, init_queries_names = contract_creator.create_init_contract()
    transitions_contracts_to_run, queries_per_contract = contract_creator.create_multiple_transitions_contracts(contracts_count)

    init_failed = []
    tr_failed = []
    if tool == "echidna":  # Definimos los parámetros del config.yaml de echidna.
        init_failed, tr_failed = echidna_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, test_limit)
    
    elif tool == "verisol":
        verisol_config = VerisolConfigData(txBound=txBound, time_out=time_out)
        init_failed, tr_failed = verisol_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, verisol_config, verisol_fails, threads_count, queries_per_contract, init_queries_names)

        

    # OutputPrinter(config_variables).print_results(tr_failed, init_failed)

    print("----Resultados finales----")
    print(f"Init failed: {init_failed}")
    print(f"Transitions failed: {tr_failed}")

    Graph(config_variables).build_graph(tr_failed, init_failed)






if __name__ == "__main__":

    start = time()

    txBound = None # VeriSol. Si no se pasan como parámetro, se inicializan en el configImporter.
    time_out = None # VeriSol
    
    verbose = False # Execution. Por ahora no se usan. Quedaron las dos medio desactualizadas, ¿no? Después veo si usarlas o no. 
    time_mode = False # Execution

    reduced = False # Optimization. Queda la optimización -default.
    reducedTrue = True # Optimization
    reducedEqual = False # Optimization

    # Podría crear un InputValidator.
    # Estas variables, como están definidas acá, son globales.
    # Faltan agregar las flags de las optimizaciones, el time_mode y el verbose.
    # Flags optimizaciones: -default, -rs, -rt, -re, -rte, -ra. 
    contract_config = sys.argv[1]
    if sys.argv[2] == "e":
        mode = Mode.epa
    elif sys.argv[2] == "s":
        mode = Mode.states
    else:
        raise InvalidParametersException("Invalid mode, must be 'e' or 's'.")
    tool = sys.argv[3]

    for i in range(1, len(sys.argv)):
        # Parámetros extra de VeriSol
        if "txbound=" in sys.argv[i]:
            if tool != "verisol":
                raise InvalidParametersException("txbound is only available for VeriSol.")
            txBound = int(sys.argv[i].replace("txbound=","").strip())
            budget = txBound
        if "time_out=" in sys.argv[i]:
            if tool != "verisol":
                raise InvalidParametersException("time_out is only available for VeriSol.")
            to = sys.argv[i].replace("time_out=","").strip()
            if to == "0":
                time_out = None
            else:
                time_out = float(to)

        # Parámetros extra de Echidna
        if "test_limit=" in sys.argv[i]:
            if tool != "echidna":
                raise InvalidParametersException("test_limit is only available for Echidna.")
            test_limit = int(sys.argv[i].replace("test_limit=","").strip())
            budget = test_limit


    main()

    end = time()
    print(f"Tiempo total: {end - start}")

    # En lo de Edén se creaba un nuevo archivo al finalizar la ejecución con el tiempo, la cantidad de timeouts, 
    # y la cantidad de fails de corral (con y sin trackvars). Pero creo que no hace falta, era más para debug.