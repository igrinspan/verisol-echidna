import os
import sys
import subprocess
dir = os. getcwd()

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
    "RefrigeratedTransportationFixed"
]

def change_contract_versions(version):
  for contract in benchmark_contracts:
    c = open(f"Contracts/{contract}.sol", "r")
    lines = c.readlines()
    lines[0] = f"pragma solidity {version};\n"
    c = open(f"Contracts/{contract}.sol", "w")
    c.writelines(lines)

def run_all_contracts(test_limit):
  for contract in benchmark_contracts:
    run_contract(contract, "e", test_limit)
    run_contract(contract, "s", test_limit)
    print("--------------\n")

def run_contract(contract, mode, test_limit):
  print(f"Running {contract} in {mode} mode with a test limit of: {test_limit}...")
  run_tesis(contract, mode, test_limit)

def run_tesis(contract, mode, test_limit):
    command_to_run = f'python3 Tesis.py {contract}Config  -t -{mode} -echidna {test_limit}'
    result = subprocess.check_call(command_to_run, shell=True, cwd=dir, stdout=sys.stdout, stderr=subprocess.STDOUT)




def main():
  # change_contract_versions(">=0.4.25 <0.9.0")
  # run_all_contracts(100)
  run_contract("AssetTransferFixed", "e", 100)

if __name__ == "__main__":
  main()
