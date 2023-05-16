import inspect
import subprocess


# Implementar.
def run_echidna_command(toolComm, final_directory):
    result = subprocess.run([toolComm, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    print(result.stdout.decode('utf-8'))
    return

# Esta función está implementada específicamente para crowdfunding, generalizarla
def hardcode_constructor_parameters(fileNameTemp, max_block, funding_goal, initial_block):
    inputfile = open(fileNameTemp, 'r').readlines()
    constructor_lines = get_constructor_from_file(inputfile).splitlines()
    constructor_lines[0] = "constructor() public {"
    constructor_lines[1] = "owner = msg.sender;" # depende la versión de solidity, podríamos necesitar agregar payable(msg.sender)
    constructor_lines[2] = f"max_block = {max_block};"
    constructor_lines[3] = f"goal = {funding_goal};"
    constructor_lines[4] = "balance = 0;"
    constructor_lines[5] = f"blockNumber = {initial_block};"

    # Buscamos la línea en la que comienza el constructor y en la que termina, para actualizar ese rango.
    constructor_start_line = next((index for index, line in enumerate(inputfile) if line.strip().startswith('constructor(')), None)
    constructor_end_line = constructor_start_line + 6 # cambiar esto, está hardcodeado para crowdfunding
    for i in range(constructor_start_line, constructor_end_line):
        inputfile[i] = constructor_lines[i-constructor_start_line] + "\n"
    write_file = open(fileNameTemp,'w')
    for line in inputfile:
        write_file.write(line)
    write_file.close()
    return 

def get_constructor_from_file(inputfile):
    #input file es una lista de strings. tiene uno por cada línea del contrato.
    res = ""
    for i in range(len(inputfile)):
        line = inputfile[i]
        if ('constructor(' in line):
            while True:
                res += line
                if ('}' in line): # Si tenemos un constructor que haga algo adentro con llaves {}, cambiar esto.
                    return inspect.cleandoc(res).replace('  ', '')
                i += 1
                line = inputfile[i]
    raise NameError('No se encontró el constructor del contrato.')

def create_echidna_command(fileNameTemp, contractName, directory):
    config_file = create_config_file(directory, 50000, 100, 0) # parámetros de crowdfunding
    commandResult =  f"echidna {fileNameTemp} --contract {contractName} --config {config_file}"
    return commandResult

def create_config_file(directory, testLimit, maxValue, balanceContract, shrinkLimit=0):
    testMode = "assertion"
    format = "text"
    new_file_name = f"{directory}/config.yaml"

    newfile = open(new_file_name, "w")
    newfile.write(f"testMode: \"{testMode}\"\n")
    newfile.write(f"format: \"{format}\"\n")
    newfile.write(f"shrinkLimit: {shrinkLimit}\n")
    newfile.write(f"testLimit: {testLimit}\n")
    newfile.write(f"maxValue: {maxValue}\n")
    newfile.write(f"balanceContract: {balanceContract}\n")
    newfile.close()
    print("----------- Se creó una configFile para esos tests -------------------")
    return new_file_name

def clean_true_requires(body):
    new_body = ""
    for line in body.splitlines():
        if line != "require(true);":
            new_body +=  line + "\n"
    return new_body

# lógica de contar los opening brackets para ver cuándo termina el constructor, por si tiene alguna llave adentro:
    # opening_brackets = 0
    # for index, line in enumerate(inputfile[start_line:]):
    #     opening_brackets += line.count('{')
    #     opening_brackets -= line.count('}')
    #     if opening_brackets == 0:
    #         end_line = start_line + index
    #         break