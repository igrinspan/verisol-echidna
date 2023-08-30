# Script para correr los contratos con echidna y guardar los tiempos.
# Los resultados (grafos) se guardan en la respectiva carpeta de cada contrato,
# y eso después lo podemos analizar con el differ.py.

import os
import sys
import subprocess
import time
import json
import shutil

os.chdir("../app/")
dir = os.getcwd()

# python3 Tesis.py RandomContractConfig  -v -s -echidna

benchmarks = { 
    1: {
        "contracts": [
            "AssetTransfer",
            "BasicProvenance",
            "DefectiveComponentCounter",
            "DigitalLocker",
            "FrequentFlyerRewardsCalculator",
            "HelloBlockchain",
            "RefrigeratedTransportation",
            "RoomThermostat",
            "SimpleMarketplace",
            "AssetTransferFixed",
            "BasicProvenanceFixed",
            "DefectiveComponentCounterFixed",
            "DigitalLockerFixed",
            "HelloBlockchainFixed",
            "RefrigeratedTransportationFixed",
            "SimpleMarketplaceFixed",
        ],
        "ignore": [
            ("AssetTransfer", 'e'),
            ("DigitalLocker", 'e'),
            ("AssetTransferFixed", 'e'),
            ("DigitalLockerFixed", 'e'),
        ],
    },

    2: {
        "contracts": [
            "Auction",
            "Crowdfunding",
            "EPXCrowdsale",
            "EscrowVault",
            "RefundEscrow",
            "RockPaperScissors",
            "SimpleAuction",
            "ValidatorAuction",
        ],
        "ignore": [
            ("Auction", 's'),  # Tiene el problema de la variable State, que no existe en el contrato.
            # ("EPXCrowdsale", 'e'),  # Demoró 4 minutos con test limit 100
            # ("EscrowVault", 'e'),  # Demoró 8 minutos con test limit 100
            ("ValidatorAuction", 'e'),  # Demoró horas con test limit 100. Tiene 57.000 queries.
            ("ValidatorAuction", 's'),  # Tiene el problema de la variable State, que no existe en el contrato.
        ],
    }
}



def change_contract_versions(version, contracts):
    for contract in contracts:
        c = open(f"Contracts/{contract}.sol", "r")
        lines = find_and_replace_versions(c, version)
        c = open(f"Contracts/{contract}.sol", "w")
        c.writelines(lines)
        

def find_and_replace_versions(contract, version):
    lines = contract.readlines()
    for i in range(len(lines)):
        if "pragma solidity" in lines[i]:
            lines[i] = f"pragma solidity {version};\n"
    return lines


def run_all_contracts(test_limit, contracts):
    for contract in contracts:
        run_contract(contract[0], contract[1], test_limit)
        print("--------------\n")


def run_contract(contract, mode, test_limit):
    print(f"Running {contract} in {mode} mode with a test limit of: {test_limit}...")
    start_time = time.time()
    command_to_run = (f"python3 echidna.py {contract}Config  -t -{mode} -echidna {test_limit}")
    result = subprocess.check_call(command_to_run, shell=True, cwd=dir, stdout=sys.stdout, stderr=subprocess.STDOUT)
    time_taken_in_seconds = round(time.time() - start_time, 2)
    save_time(contract, mode, test_limit, time_taken_in_seconds)


def save_time(contract, mode, test_limit, time_taken_in_seconds):
    times.append(
        {
            "contract": contract,
            "test_limit": test_limit,
            "mode": mode,
            "time_in_s": time_taken_in_seconds,
        }
    )


# def borrar_directorios():
#   dir = os.getcwd()
#   echidna_output_dir = f'{dir}/echidna_output'
#   for filename in os.listdir(echidna_output_dir):
#       f = os.path.join(echidna_output_dir, filename)
#       for new_level_filename in os.listdir(f):
#           print(new_level_filename)
#           shutil.rmtree(f'{f}/{new_level_filename}')


def run_benchmark(benchmark):
    contracts = benchmarks[benchmark]["contracts"]
    contracts = [(c, mode) for c in contracts for mode in ['e', 's']]
    contracts_to_run = [c for c in contracts if c not in benchmarks[benchmark]["ignore"]]
    print(f"Skipping the following contracts: {benchmarks[benchmark]['ignore']}")
    print(f"Running the following contracts: {contracts_to_run}")
    change_contract_versions(">=0.4.25 <0.9.0", [c[0] for c in contracts_to_run])
    run_all_contracts(500, contracts_to_run)
    run_all_contracts(50_000, contracts_to_run)
    run_all_contracts(500_000, contracts_to_run)
    run_all_contracts(1_000_000, contracts_to_run)
    fileout = open(f"../results/echidna_output_benchmark_{benchmark}/times", "a")
    json.dump(times, fileout)


times = []

def main():
    print("Descomentar la línea del benchmark que se quiere correr.")
    # run_benchmark(1)
    # run_benchmark(2)


if __name__ == "__main__":
    main()
