from time import time
import subprocess
import re
from dataclasses import dataclass, fields, asdict

class EchidnaRunner:
    def __init__(self, config_variables, contract, config_file_params):
        self.directory = config_variables.dir
        self.config_variables = config_variables
        self.contract = contract
        self.config_file_params = config_file_params

    def run_contract(self): 
        start = time()
        result = self.set_up_and_run()
        end = time()
        print(f'The contract took {round(end - start, 2)} seconds to run...')
        return self.process_output(result)
    
    def set_up_and_run(self):
        tool_command = self.create_echidna_command()
        result = self.run_echidna_command(tool_command)
        return result

    def create_echidna_command(self):
        config_file = self.create_config_file()
        commandResult =  f"echidna {self.contract} --contract {self.config_variables.contractName} --config {config_file}"
        return commandResult

    def run_echidna_command(self, command_to_run):
        result = subprocess.run([command_to_run, ""], shell = True, cwd=self.directory, stdout=subprocess.PIPE)
        return result.stdout.decode('utf-8')

    def process_output(self, tool_result):
        tests_that_failed = []
        for line in tool_result.splitlines():
            if "failed!" in line:
                match = re.search(r'vc(\w+)\(', line)
                if match:
                    failed_test = match.group(1)  # vcIxJxK(¡): -> IxJxK.
                    print(failed_test)
                else:
                    continue  # Por si falla un assert que no tiene que ver con los tests
                i, j, k = get_params_from_function_name(failed_test)
                tests_that_failed.append([i, j, k])
        return tests_that_failed

    def create_config_file(self):
        new_file_name = f"{self.directory}/config.yaml"
        newfile = open(new_file_name, "w")
        for key, value in asdict(self.config_file_params).items():
            newfile.write(f"{key}: {value} \n")
        newfile.close()
        return new_file_name



# Pure
def get_params_from_function_name(temp_function_name):
    array = temp_function_name.split('x')
    return int(array[0]), int(array[1]), int(array[2])

