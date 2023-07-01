import os
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

def run_tesis(contract, mode):
    command_to_run = f'python3 Tesis.py {contract}Config  -v -{mode} -echidna'
    result = subprocess.run([command_to_run, ""], shell = True, cwd= dir, stdout=subprocess.PIPE)
    return result.stdout.decode('utf-8')

def main():
  for contract in benchmark_contracts:
    print(f"Running {contract} in epa mode...")
    run_tesis(contract, "e")
    print(f"Running {contract} in states mode...")
    run_tesis(contract, "s")
    print("--------------\n")

if __name__ == "__main__":
  main()
