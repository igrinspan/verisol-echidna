import os
import subprocess
dir = os. getcwd()
init_command = 'echidna pruebas-constructor-fuzzing/OutputTemp_init.sol --contract Crowdfunding --config pruebas-constructor-fuzzing/config.yaml'
transitions_command = 'echidna pruebas-constructor-fuzzing/OutputTemp_transitions.sol --contract Crowdfunding --config pruebas-constructor-fuzzing/config.yaml'

def run_echidna_command(command_to_run):
    result = subprocess.run([command_to_run, ""], shell = True, cwd= dir, stdout=subprocess.PIPE)
    return result.stdout.decode('utf-8')

def save_to(filename, result):
    write_file = open(filename,'w')
    for line in result.splitlines():
        write_file.write(line)
    write_file.close()

def read_results(filename):
    results = open(filename, 'r').readlines()
    for line in results:
        print('-------')
        if 'failed!' in line:
            print(line)

# save_to('pruebas-constructor-fuzzing/resultados', run_echidna_command(transitions_command))

# read_results('pruebas-constructor-fuzzing/resultados')