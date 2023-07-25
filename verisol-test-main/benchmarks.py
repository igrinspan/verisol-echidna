import os
import sys
import subprocess
import time
import json
import shutil

dir = os.getcwd()

# python3 Tesis.py RandomContractConfig  -v -s -echidna

benchmark_1 = [
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
]

ignore_1 = [
   "AssetTransfer",
   "DigitalLocker",
   "AssetTransferFixed",
   "DigitalLockerFixed",
]

benchmark_2 = [
	"Auction",
	"Crowdfunding",
	"EPXCrowdsale",
	"EscrowVault",
	"RefundEscrow",
	"RockPaperScissors",
	"SimpleAuction",
	"ValidatorAuction",
]

ignore_2 = []


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
    print(f"Running {contract} in {mode} mode with a test limit of: {test_limit}...")
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


def borrar_directorios():
  dir = os.getcwd()
  echidna_output_dir = f'{dir}/echidna_output'
  for filename in os.listdir(echidna_output_dir):
      f = os.path.join(echidna_output_dir, filename)
      for new_level_filename in os.listdir(f):
          print(new_level_filename)
          shutil.rmtree(f'{f}/{new_level_filename}')


times = []

def main():
    # measure time
    start_time = time.time()
    contracts_to_run = [contract for contract in benchmark_2 if contract not in ignore_2]
    print(f"Skipping the following contracts: {ignore_2}")
    change_contract_versions(">=0.4.25 <0.9.0", contracts_to_run)
    run_all_contracts(500, contracts_to_run)
    run_all_contracts(50_000, contracts_to_run)
    run_all_contracts(500_000, contracts_to_run)
    fileout = open("times_benchmark_2.json", "a")
    json.dump(times, fileout)


if __name__ == "__main__":
    main()
