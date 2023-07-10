import os
import sys
import subprocess
import time
import json

dir = os.getcwd()

# python3 Tesis.py RandomContractConfig  -v -s -echidna

benchmark_contracts = [
    "HelloBlockchain",
    "BasicProvenance",
    "DefectiveComponentCounter",
    "DigitalLocker",
    "FrequentFlyerRewardsCalculator",
    "RefrigeratedTransportation",
    "RoomThermostat",
    "SimpleMarketplace",
    "AssetTransfer",
    "HelloBlockchainFixed",
    "SimpleMarketplaceFixed",
    "BasicProvenanceFixed",
    "DefectiveComponentCounterFixed",
    "DigitalLockerFixed",
    "AssetTransferFixed",
    "RefrigeratedTransportationFixed",
]

ignore = [
    ("AssetTransfer", "e"),
    ("AssetTransfer", "s"),
    ("DigitalLocker", "e"),
    ("DigitalLocker", "s"),
    ("DigitalLockerFixed", "e"),
    ("DigitalLockerFixed", "s"),
    ("AssetTransferFixed", "e"),
    ("AssetTransferFixed", "s"),
]


def change_contract_versions(version, contracts):
    for contract in contracts:
        c = open(f"Contracts/{contract}.sol", "r")
        lines = c.readlines()
        lines[0] = f"pragma solidity {version};\n"
        c = open(f"Contracts/{contract}.sol", "w")
        c.writelines(lines)


def run_all_contracts(test_limit, contracts):
    for contract in contracts:
        run_contract(contract, "e", test_limit)
        run_contract(contract, "s", test_limit)
        print("--------------\n")


def run_contract(contract, mode, test_limit):
    if (contract, mode) in ignore:
        print(
            f"Skipping {contract} in {mode} mode with a test limit of: {test_limit}..."
        )
        return
    print(f"Running {contract} in {mode} mode with a test limit of: {test_limit}...")
    run_tesis(contract, mode, test_limit)


def run_tesis(contract, mode, test_limit):
    start_time = time.time()
    command_to_run = (
        f"python3 Tesis.py {contract}Config  -t -{mode} -echidna {test_limit}"
    )
    result = subprocess.check_call(
        command_to_run, shell=True, cwd=dir, stdout=sys.stdout, stderr=subprocess.STDOUT
    )
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


times = []


def main():
    # measure time
    start_time = time.time()
    change_contract_versions(">=0.4.25 <0.9.0", benchmark_contracts)
    run_all_contracts(100, benchmark_contracts)
    run_all_contracts(50_000, benchmark_contracts)
    run_all_contracts(500_000, benchmark_contracts)
    fileout = open("times.json", "a")
    json.dump(times, fileout)


if __name__ == "__main__":
    main()
