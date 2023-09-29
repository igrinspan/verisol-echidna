import sys
import subprocess
import os

# Este script es simplemente para correr las 2 por separado, tipo proxy.
# En main.py está la "integración" posta.

# python3 main2.py HelloBlockchainConfig e verisol -default
# python3 main2.py HelloBlockchainConfig e echidna 500

if __name__ == "__main__":
    contract_config = sys.argv[1]
    mode = sys.argv[2]
    print(contract_config)
    tool = sys.argv[3]
    budget = sys.argv[4]

    command_to_run = f"python3 {tool}.py {contract_config} -{mode} {budget}"
    print(f"Running command: {command_to_run}")

    # El check_call es para poder ver el standard output en tiempo real, en la terminal.
    subprocess.check_call(command_to_run, shell=True, cwd=os.getcwd(), stdout=sys.stdout, stderr=subprocess.STDOUT)
