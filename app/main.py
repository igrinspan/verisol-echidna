""" Main module """

import sys
from time import time
import os
from threading import Thread
import numpy as np

from modules.contract_creation import ContractCreator, VerisolContractCreator
from modules.tools_configs import EchidnaConfigData, VerisolConfigData
from modules.tools_runners import EchidnaRunner, VerisolRunner
from modules.contract_config import ConfigVariables, ConfigImporter, Mode, VerisolExecutionHistory
from modules.output import Graph, OutputPrinter
from modules.file_manager import create_directory, create_directory_2

sys.path.append("../")
sys.path.append("Configs")
sys.path.append("modules/")


class InvalidParametersException(Exception):
    pass


def create_config_variables():
    # Creamos el objeto en el que vamos a guardar las variables.
    config_variables = ConfigVariables()

    # Creamos el objeto que va a importar y hacer el setUp de esas variables. 
    config = __import__(contract_config, level=0)
    importer = ConfigImporter(config, config_variables, optimization_settings)
    
    config_variables = importer.config_variables_setup(mode)
    return config_variables

# TODO: lógica de cantidad de contratos y threads.
def set_thread_and_contracts_count(config_variables):
    if tool == "echidna":
        threads_count = 16
        contracts_count = 8
    else: # tool == "verisol"
        preconditions_count = len(config_variables.preconditions)
        threads_count = 8
        real_threads_count = threads_count if preconditions_count > threads_count else preconditions_count
        contracts_count = real_threads_count
    
    return threads_count, contracts_count

# Crea los threads y cada uno corre reduceCombinations.
def discard_unreachable_states(config_variables, threads_count, verisol_fails):
    """ Corre el reduceCombinations de VeriSol para descartar estados espurios/inalcanzables """
    preconditions_per_thread = np.array_split(config_variables.preconditions, threads_count)
    states_per_thread = np.array_split(config_variables.states, threads_count)
    extra_cond_per_thread = []
    if len(config_variables.extraConditions) != 0:
        extra_cond_per_thread = np.array_split(config_variables.extraConditions, threads_count)

    print(threads_count)
    verisol_config = VerisolConfigData(txBound=8, time_out=600)

    count_pre_initial = len(config_variables.preconditions)
    # Corremos discard_unreachable_states.
    threads = []
    results = {'preconditions': [None]*threads_count, 'states': [None]*threads_count, 'extra_conditions': [None]*threads_count}
    for tid in range(threads_count):
        thread = Thread(target = reduceCombinations, args = [config_variables, verisol_config, verisol_fails, preconditions_per_thread[tid], states_per_thread[tid], extra_cond_per_thread[tid], tid, results])
        thread.start()
        threads.append(thread)


    for thread in threads:
        thread.join()

    config_variables = update_variables_after_reduce_combinations(config_variables, results)
    save_results_in_file(config_variables, count_pre_initial)

    print("Acá termina el reduceCombinations de VeriSol.")

def update_variables_after_reduce_combinations(config_variables, results):
    """ Se actualizan preconditions, states y extra_conditions """
    new_pre = [x for x in results["preconditions"] if x]
    new_states = [x for x in results["states"] if x]
    new_extra = [x for x in results["extra_conditions"] if x]
    
    if len(new_pre) != 0:
        new_pre = np.concatenate(new_pre)
        new_states = np.concatenate(new_states)
    if len(new_extra) != 0:
        new_extra = np.concatenate(new_extra)

    # print("----Resultados luego de correr discard_unreachable_states----")
    # print(new_pre)
    # print(new_states)
    # print(new_extra)

    config_variables.preconditions = new_pre
    config_variables.states = new_states
    config_variables.extraConditions = new_extra

    return config_variables 

def save_results_in_file(config_variables, count_pre_initial):
    """ Devolvemos los resultados del reduce_combinations en un archivo """
    count_pre_final = len(config_variables.preconditions)
    temp_dir = create_directory_2(config_variables.dir, "temp")
    temp_dir = os.path.join(temp_dir, contract_config + "-" + str(mode) + ".txt")
    with open(temp_dir, "w", encoding="utf-8") as f:
        f.write(str(count_pre_initial) + "\n" + str(count_pre_final) + "\n" + str(len(config_variables.functions)))

def reduceCombinations(config_variables, verisol_config, verisol_fails, preconditions, states, extra_conditions, thread_id, results):
    if len(preconditions) == 0:
        print(f"Soy el thread {thread_id} y no tengo preconditions para testear.")
        return

    # Creamos el contrato de preconditions para este thread.
    preconditions_contract, queries_names = VerisolContractCreator(config_variables).create_preconditions_contract(preconditions, extra_conditions, thread_id)

    # Corremos el try_preconditions.
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
    tiempo_verisol_runner = time()
    resultado = VerisolRunner(config_variables, contract_to_run, verisol_config, verisol_fails).try_transaction(tool_command, queries_names, final_directory, states)
    results[thread_id] = resultado

def echidna_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, test_limit):
    """ Corre los contratos con Echidna. Para eso prepara la configFile y llama al EchidnaRunner """
    init_failed = []
    tr_failed = []
    init_config_params = EchidnaConfigData(testLimit=test_limit, workers=16, format="text", seqLen=2)
    transitions_config_params = EchidnaConfigData(testLimit=test_limit, workers=16, format="text")

    valid_init_time = time()
    init_failed = EchidnaRunner(config_variables, init_contract_to_run, init_config_params).run_contract()
    print(f"-> Tiempo del contrato init: {time() - valid_init_time}")

    transitions_time = time()
    for contract in transitions_contracts_to_run:
        tr_failed += EchidnaRunner(config_variables, contract, transitions_config_params).run_contract()
    print(f"-> Tiempo de los contratos de transiciones: {time() - transitions_time}")

    return init_failed, tr_failed

def verisol_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, verisol_config, verisol_fails, threads_count, queries_per_contract, init_queries_names):
    """ Corre los contratos con VeriSol, llamando a ValidInit y a ValidCombiations"""

    valid_init_time = time()
    # Valid INIT
    tool_command = f"VeriSol {init_contract_to_run} {config_variables.contractName}"
    init_failed = VerisolRunner(config_variables, init_contract_to_run, verisol_config, verisol_fails).try_init(tool_command, init_queries_names, config_variables.dir)
    print(f"-> Tiempo de valid_init: {time() - valid_init_time}")
    # init_failed es algo como [(vc0x0x1, ""), (vc0x2x0, "?"), (vc0x2x1, ""), (vc3x0x2, "fail?")]

    valid_combinations_time = time()
    # Valid COMBINATIONS.
    # - Ya tenemos los contratos organizados en threads. (hay contratos en el directorio thread_0, thread_1).
    threads = []
    results = [None] * threads_count

    for i in range(threads_count):
        if i >= len(queries_per_contract):
            # print(f"Soy el thread {i} y no tengo queries para validCombinations.")
            continue
        queries_de_este_thread = queries_per_contract[i]
        contract_to_run = transitions_contracts_to_run[i]
        thread = Thread(target = validCombinations, args = [config_variables, verisol_config, verisol_fails, contract_to_run, queries_de_este_thread, i, results])
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()

    # results = [ [(vc0x0x1, ""), (vc3x0x2, "?")], None, None, [...], ... ]
    results_filtered = list(filter(lambda item: item is not None, results)) # filter None
    tr_failed = [item for sublist in results_filtered for item in sublist] # flatten

    print(f"-> Tiempo de valid_combinations: {time() - valid_combinations_time}")

    # OutputPrinter(config_variables).print_verisol_fails(verisol_fails)

    return init_failed, tr_failed

def create_transitions_contracts_for_each_thread(contract_creator, threads_count):
    """ Crea los contratos de transiciones para cada thread. 
    Retorna una lista de contratos listos para ejecutar y una lista con los nombres de las queries de cada contrato. """ 
    threads = []
    results = [None for i in range(threads_count)]
    for tid in range(threads_count):
        thread = Thread(target = contract_creator.create_transitions_contract_for_thread(tid, threads_count, results))
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()

    contracts = [x[0] for x in results]
    queries_per_contract = [x[1] for x in results]

    contracts = list(filter(lambda item: item is not None, contracts))
    queries_per_contract = list(filter(lambda item: item is not None, queries_per_contract))

    return contracts, queries_per_contract

def main():
    # Importamos y guardamos las variables (preconditions, states, functions, etc.)
    config_variables = create_config_variables()

    # Definimos dónde se van a guardar los resultados, tanto los contratos a correr como el grafo.
    # Agrego budget para diferenciar ejecuciones de la misma tool. En echidna es test_limit y en verisol es txbound.
    if optimization_settings.reduced:
        config_variables.dir_name = f"../results/{tool}_output/{config_variables.contractFileName[:-4]}/{mode.name}/{budget}/not_reduce_combinations"
    else:
        config_variables.dir_name = f"../results/{tool}_output/{config_variables.contractFileName[:-4]}/{mode.name}/{budget}/reduce_combinations"
    config_variables.dir = create_directory(config_variables.dir_name) # devuelve el path completo.

    threads_count, contracts_count = set_thread_and_contracts_count(config_variables) # Para el discard_unreachable_states.

    # En VeriSol, creamos un contrato por thread. O sea contracts_count = threads_count.
    # En Echidna, creamos una cierta cantidad de contratos dependiendo de la cantidad de queries que tengamos. (ej: > 100 queries).

    # Hacemos lo de discard_unreachable_states y actualizamos variables.
    print("-> Descartando estados inalcanzables con el reduceCombinations...")
    reduce_combinations_time = time()
    verisol_fails = VerisolExecutionHistory()
    if mode == Mode.epa and not optimization_settings.reduced:
        discard_unreachable_states(config_variables, 8, verisol_fails)
    print(f"-> Tiempo de reduce_combinations: {time() - reduce_combinations_time} \n")

    # return
    # Volvemos a calcular la cantidad de queries para definir cuántos contratos distintos vamos a correr.
    threads_count, contracts_count = set_thread_and_contracts_count(config_variables)


    print("-> Creando los contratos a ejecutar...")
    contract_creation_time = time()
    # Creamos los contratos.
    contract_creator = ContractCreator().create_contract_creator(config_variables, tool)

    init_contract_to_run, init_queries_names = contract_creator.create_init_contract()
    if tool == "verisol":
        transitions_contracts_to_run, queries_per_contract = create_transitions_contracts_for_each_thread(contract_creator, threads_count)
    elif tool == "echidna":
        transitions_contracts_to_run, queries_per_contract = contract_creator.create_multiple_transitions_contracts(contracts_count)
    print(f"-> Tiempo de creación de contratos: {time() - contract_creation_time} \n")

    print("-> Ejecutando los contratos de init y de transiciones...")
    execution_time = time()
    init_failed = []
    tr_failed = []
    if tool == "echidna":  # Definimos los parámetros del config.yaml de echidna.
        try:
            init_failed, tr_failed = echidna_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, test_limit)
        except Exception as e:
            print(f"No se pudo correr el contrato {config_variables.contractName} con Echidna en modo {mode.name}.")


    elif tool == "verisol":
        verisol_config = VerisolConfigData(txBound=txBound, time_out=time_out)
        init_failed, tr_failed = verisol_execution_logic(config_variables, init_contract_to_run, transitions_contracts_to_run, verisol_config, verisol_fails, threads_count, queries_per_contract, init_queries_names)
    print(f"-> Tiempo de ejecución: {time() - execution_time} \n")


    OutputPrinter(config_variables).print_results(tr_failed, init_failed)

    # print("----Resultados finales----")
    # print(f"Init failed: {init_failed}")
    # print(f"Transitions failed: {tr_failed}")
    graph_time = time()
    print("-> Construyendo el grafo...")
    Graph(config_variables).build_graph(init_failed, tr_failed)
    print(f"-> Tiempo de construcción del grafo: {time() - graph_time} \n")

class Optimizer():
    """ Clase para guardar las flags de optimización. """
    def __init__(self):
        self.reduced = False
        self.reduced_true = True
        self.reduced_equal = False
        self.flag_mapping = {
            "-rs": {"reduced": True},
            "-rt": {"reduced_true": False},
            "-re": {"reduced_equal": True},
            "-rte": {"reduced_equal": True, "reduced_true": False},
            "-ra": {"reduced_equal": True, "reduced_true": False, "reduced": True}
        }

    def __str__(self): 
        return f"reduced: {self.reduced}\nreduced_true: {self.reduced_true}\nreduced_equal: {self.reduced_equal}"

    def set_flags(self, flag):
        """ Setea las variables de optimización según la flag que se le pase """
        if flag in self.flag_mapping:
            flags_to_update = self.flag_mapping[flag]
            for variable, value in flags_to_update.items():
                setattr(self, variable, value)
        else:
            raise InvalidParametersException(f"Unrecognized parameter: {flag}.")


if __name__ == "__main__":

    start = time()

    # Si no se pasan como parámetro, se inicializan en el configImporter.
    txBound = None # VeriSol
    time_out = None # VeriSol
    test_limit = None # Echidna
    budget = None

    verbose = False # Execution. Por ahora no se usan. Quedaron las dos medio desactualizadas, ¿no? 
    time_mode = False # Execution

    optimization_settings = Optimizer()

    # Estas variables, como están definidas acá, son globales.
    # Falta agregar el time_mode y el verbose, si es que decido usarlos.

    # TODO: setear valores por default para los parámetros de VeriSol y Echidna,
    # para cuando no se pasan como parámetros. No olvidarse de la variable budget.
    contract_config = sys.argv[1]
    if sys.argv[2] == "e":
        mode = Mode.epa
    elif sys.argv[2] == "s":
        mode = Mode.states
    else:
        raise InvalidParametersException("Invalid mode, must be 'e' or 's'.")
    tool = sys.argv[3]

    for i in range(4, len(sys.argv)): # los primeros 4 los ignoramos. Ya los usamos.
        # Parámetros extra de VeriSol:
        if "txbound=" in sys.argv[i]:
            txBound = int(sys.argv[i].replace("txbound=","").strip())
            budget = txBound
        elif "time_out=" in sys.argv[i]:
            time_out = float(sys.argv[i].replace("time_out=","").strip())
        # Parámetros extra de Echidna
        elif "test_limit=" in sys.argv[i]:
            test_limit = int(sys.argv[i].replace("test_limit=","").strip())
            budget = test_limit
        else:
            optimization_flag = sys.argv[i]
            optimization_settings.set_flags(optimization_flag)

    config = __import__(contract_config, level=0)
    if tool == "verisol":
        if txBound is None:
            if hasattr(config, "txBound"):
                txBound = int(config.txBound)                
            else:
                txBound = 8
            budget = txBound
        if time_out is None:
            if hasattr(config, "time_out"):
                time_out = float(contract_config.time_out)
            else:
                time_out = 600.0
    elif tool == "echidna":
        if test_limit is None:
            test_limit = 50_000
            budget = test_limit

    main()

    end = time()
    print(f"Tiempo total: {end - start}")

    # En lo de Edén se creaba un nuevo archivo al finalizar la ejecución con el tiempo,
    # la cantidad de timeouts, y la cantidad de fails de corral (con y sin trackvars).
    # Pero creo que no hace falta, era más para debug.
