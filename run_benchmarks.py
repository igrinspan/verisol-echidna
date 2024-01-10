# Script para correr los contratos con echidna y guardar los tiempos.
# Los resultados (grafos) se guardan en la respectiva carpeta de cada contrato,
# y eso después lo podemos analizar con el differ.py.

import os
import sys
import subprocess
import time
import json
import shutil
import multiprocessing


os.chdir("../app/")
dir = os.getcwd()

# python3 Tesis.py RandomContractConfig  -v -s -echidna
benchmarks = {
    1: {
        "contracts": [
            # Original
            "AssetTransfer",
            "BasicProvenance",
            "DefectiveComponentCounter",
            "DigitalLocker",
            "FrequentFlyerRewardsCalculator",
            "HelloBlockchain",
            "RefrigeratedTransportation",
            "RoomThermostat",
            "SimpleMarketplace",
            # Fixed
            "AssetTransferFixed",
            "BasicProvenanceFixed",
            "DefectiveComponentCounterFixed",
            "DigitalLockerFixed",
            "HelloBlockchainFixed",
            "RefrigeratedTransportationFixed",
            "SimpleMarketplaceFixed",
        ],
        "ignore": [
            ("AssetTransfer", "e"),
            ("DigitalLocker", "e"),
            ("AssetTransferFixed", "e"),
            ("DigitalLockerFixed", "e"),
        ],
    },
    2: {
        "contracts": [
            # Original
            "Auction",
            "Crowdfunding",
            "EPXCrowdsale",
            "EscrowVault",
            "RefundEscrow",
            "RockPaperScissors",
            "SimpleAuction",
            "ValidatorAuction",
            # Variations
            "RefundEscrowWithdraw",  # e
            "EPXCrowdsaleIsCrowdsaleClosed",  # e
            "CrowdfundingTime_Base",  # e
            "CrowdfundingTime_BaseBalance",  # e
            "CrowdfundingTime_BaseBalanceFix",  # e
            "ValidatorAuction",  # s
            "ValidatorAuction",  # e
            # "ValidatorAuction_withdraw", # e
            "SimpleAuctionTime",  # e
            "SimpleAuctionEnded",  # e
            "SimpleAuctionHB",  # s
            "AuctionEnded",  # e
            "AuctionWithdraw",  # e
        ],
        "ignore": [
            # ("EPXCrowdsale", 'e'),  # Demoró 4 minutos con test limit 100
            # ("EscrowVault", 'e'),  # Demoró 8 minutos con test limit 100
            ("Auction", "s"),  # Tiene el problema de la variable State y StateType, que no existen en el contrato.
            ("SimpleAuction", "s"),  # highestBidderA, pendingReturnsArray no existen.
            ("ValidatorAuction", "e"),  # Demoró horas con test limit 100.
            # Ignoro los siguientes porque así estaba en el benchmark_info de SolidityAbstractor
            ("RefundEscrowWithdraw", "s"),
            ("EPXCrowdsaleIsCrowdsaleClosed", "s"),
            ("CrowdfundingTime_Base", "s"),
            ("CrowdfundingTime_BaseBalance", "s"),
            ("CrowdfundingTime_BaseBalanceFix", "s"),
            ("ValidatorAuction", "e"),
            ("ValidatorAuction", "s"),
            ("ValidatorAuction_withdraw", "s"),
            ("SimpleAuctionTime", "s"),
            ("SimpleAuctionEnded", "s"),
            ("SimpleAuctionHB", "e"),
            ("AuctionEnded", "s"),
            ("AuctionWithdraw", "s"),
        ],
    },
    3: {
        # Benchmark 2-PA (en SolidityAbstractor).
        "contracts": [
            # "Crowdfunding_BaseConfig_models", # s y e
            # "CrowdfundingTime_BaseBalanceConfigFix_states", # s
            # "CrowdfundingTimeClaimBakersRefinementConfig", # e
            # "CrowdfundingTimeClaimRefinementConfig", # e
            # "CrowdfundingTimeConfig", # e
            # "CrowdfundingTimeDonateRefinementConfig", # e
            # "CrowdfundingTimeReentrancyConfig", # e
            # "CrowdfundingTimeReentrancyFixedConfig", # e
            # "CrowdfundingTimeReentrancyFixedMutexConfig", # e
        ],
        "ignore": [],
    },
}


def change_contract_versions(version, contracts):
    for contract in contracts:
        contract = contract.replace("Fixed", "_fixed").replace("Time", "T")
        with open(f"Contracts/{contract}.sol", "r", encoding="utf-8") as c:
            lines = find_and_replace_versions(c, version)
        with open(f"Contracts/{contract}.sol", "w", encoding="utf-8") as c:
            c.writelines(lines)


def find_and_replace_versions(contract, version):
    lines = contract.readlines()
    for i, line in enumerate(lines):
        if "pragma solidity" in line:
            lines[i] = f"pragma solidity {version};\n"
    return lines


def run_all_contracts_echidna(contracts, test_limit, reducing, benchmark):
    for contract in contracts:
        if reducing and contract[1] == "s":
            continue  # En modo states no se hace el reduceCombinations nunca.
        run_contract_echidna(contract[0], contract[1], test_limit, reducing, benchmark)
        print("--------------\n")


def run_contract_echidna(contract, mode, test_limit, reducing, benchmark):
    print(
        f"Running {contract} with echidna in {mode} mode with a test limit of: {test_limit}..."
    )
    start_time = time.time()
    # python3 main.py <contract-config-file> <mode> <tool> [tool specific options]
    command_to_run = (
        f"python3 main.py {contract}Config  {mode} echidna test_limit={test_limit}"
    )
    if not reducing:
        command_to_run += " -rs"
    result = subprocess.check_call(
        command_to_run, shell=True, cwd=dir, stdout=sys.stdout, stderr=subprocess.STDOUT
    )
    time_taken_in_seconds = round(time.time() - start_time, 2)
    save_time_echidna(
        contract, mode, test_limit, time_taken_in_seconds, reducing, benchmark
    )


def save_time_echidna(
    contract, mode, test_limit, time_taken_in_seconds, reducing, benchmark
):
    obj = {
        "contract": contract,
        "test_limit": test_limit,
        "mode": mode,
        "reduce combinations": reducing,
        "time_in_s": time_taken_in_seconds,
    }
    with open(
        f"../results/benchmarks/echidna_benchmark_{benchmark}", "a", encoding="utf-8"
    ) as fileout:
        json.dump(obj, fileout)
        fileout.write(", ")


def run_all_contracts_verisol(contracts, tx_bound, benchmark):
    for contract in contracts:
        run_contract_verisol(contract[0], contract[1], tx_bound, benchmark)
        print("--------------\n")


def run_contract_verisol(contract, mode, tx_bound, benchmark):
    print(f"Running {contract} with verisol in {mode} mode...")
    start_time = time.time()
    command_to_run = (
        f"python3 main.py {contract}Config  {mode} verisol txbound={tx_bound}"
    )
    result = subprocess.check_call(
        command_to_run, shell=True, cwd=dir, stdout=sys.stdout, stderr=subprocess.STDOUT
    )
    time_taken_in_seconds = round(time.time() - start_time, 2)
    _, timeout = get_tx_bound_and_timeout_from_config(contract)
    save_time_verisol(
        contract, mode, tx_bound, timeout, time_taken_in_seconds, benchmark
    )


sys.path.append("../app/Configs")


def get_tx_bound_and_timeout_from_config(contract):
    contract_config = f"{contract}Config"
    config = __import__(contract_config, level=0)

    tx_bound = 8
    timeout = 600

    if hasattr(config, "txBound"):
        tx_bound = config.txBound
    if hasattr(config, "timeout"):
        timeout = config.timeout

    return tx_bound, timeout


def save_time_verisol(
    contract, mode, tx_bound, timeout, time_taken_in_seconds, benchmark
):
    objeto = {
        "contract": contract,
        "txBound": tx_bound,
        "timeout": timeout,
        "mode": mode,
        "time_in_s": time_taken_in_seconds,
    }
    with open(
        f"../results/benchmarks/verisol_benchmark_{benchmark}/times",
        "a",
        encoding="utf-8",
    ) as fileout:
        json.dump(objeto, fileout)


# def borrar_directorios():
#   dir = os.getcwd()
#   echidna_output_dir = f'{dir}/echidna_output'
#   for filename in os.listdir(echidna_output_dir):
#       f = os.path.join(echidna_output_dir, filename)
#       for new_level_filename in os.listdir(f):
#           print(new_level_filename)
#           shutil.rmtree(f'{f}/{new_level_filename}')


# def all_dirs_have_2_or_less_files():
#     echidna_output_dir = f'../results/echidna_output'
#     for filename in os.listdir(echidna_output_dir):
#         f = os.path.join(echidna_output_dir, filename)
#         if len(os.listdir(f)) > 2:
#             print(f"1. ERROR: {f} does not have 2 files")
#         for new_level_filename in os.listdir(f):
#             print(new_level_filename)
#             for file in os.listdir(f'{f}/{new_level_filename}'):
#                 if len(os.listdir(f'{f}/{new_level_filename}/{file}')) > 2:
#                     print(f"2. ERROR: {f}/{new_level_filename}/{file} does not have 2 files")

#     # same for verisol_output
#     verisol_output_dir = f'../results/verisol_output'
#     for filename in os.listdir(verisol_output_dir):
#         f = os.path.join(verisol_output_dir, filename)
#         if len(os.listdir(f)) > 2:
#             print(f"0. ERROR: {f} does not have 2 files")
#         for new_level_filename in os.listdir(f):
#             print(new_level_filename)
#             for file in os.listdir(f'{f}/{new_level_filename}'):
#                 if len(os.listdir(f'{f}/{new_level_filename}/{file}')) > 2:
#                     print(f"2. ERROR: {f}/{new_level_filename}/{file} is not empty")


def create_times_directories(benchmark):
    directory_path = f"../results/benchmarks/echidna_benchmark_{benchmark}/"
    if not os.path.exists(directory_path):
        os.makedirs(directory_path)

    directory_path = f"../results/benchmarks/verisol_benchmark_{benchmark}/"
    if not os.path.exists(directory_path):
        os.makedirs(directory_path)


def run_benchmark(benchmark):
    create_times_directories(benchmark)

    contracts = benchmarks[benchmark]["contracts"]
    contracts = [(c, mode) for c in contracts for mode in ["e", "s"]]
    contracts_to_run = [c for c in contracts if c not in benchmarks[benchmark]["ignore"]]

    print(f"Skipping the following contracts: {benchmarks[benchmark]['ignore']}")
    print("--------------\n")
    print(f"Running the following contracts: {contracts_to_run}")
    print("--------------\n")

    change_contract_versions(">=0.4.25 <0.9.0", [c[0] for c in contracts_to_run])

    tx_bounds = [4, 8]
    for tx_bound in tx_bounds:
        run_all_contracts_verisol(contracts_to_run, tx_bound)

    test_limits = [1_000, 50_000, 500_000]

    for test_limit in test_limits:
        run_all_contracts_echidna(contracts_to_run, test_limit, False, benchmark)

    for test_limit in test_limits:
        run_all_contracts_echidna(contracts_to_run, test_limit, True, benchmark)


def main():
    print("Descomentar la línea del benchmark que se quiere correr.")
    # run_benchmark(1)
    # run_benchmark(2)


if __name__ == "__main__":
    main()
