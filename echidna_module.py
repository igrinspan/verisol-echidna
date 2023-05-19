import inspect
import subprocess
from string_op import get_params_from_function_name

def set_up_and_run(fileNameTemp, contractName, final_directory):
    toolComm = create_echidna_command(fileNameTemp, contractName, final_directory)
    hardcode_constructor_parameters(fileNameTemp, 2, 50, 0)
    # los asserts ya están negados, no?
    print(f"El comando a correr es {toolComm} en el directorio {final_directory}") 
    result = run_echidna_command(toolComm, final_directory)
    print(result)
    tests_that_failed = process_output(result)
    # en tests_that_failed hay un arreglo del estilo ["1x2x3", "1x0x1", "3x1x0"...]


    # Acá tengo 2 opciones: correr el comando directamente para todos los tests y después procesar el resultado, 
    # o aprovechar try_transaction y try_command, que corren un test a la vez.
    # Si hago lo segundo, tengo que modificar el config file para que haga blacklists de los tests que no quiero correr.
    # si quiero hacer lo primero, en functionCombinations tengo todos los nombres de las funciones de test
    # de ahí, puedo usar get_params_from_function_name y print_output para obtener el estado inicial, la transición y el estado final.

def process_output(tool_result):
    tests_that_failed = []
    # 1. Recorrer todas las líneas del resultado.
    for line in tool_result.splitlines():
    # 2. Si nos encontramos con una línea "  vc3x1x2(): failed!💥"
        if "failed!" in line:
    # 3. Obtener el NOMBRE de la función de test que falló: vcIxJxK(): -> IxJxK.
            failed_test = line.split()[0][2:-3]
    # 4. Appendeamos ese resultado a alguna estructura donde guardemos todo.
    #  Luego podemos usar get_params y todo eso para hacer add_node_to_graph y print_output.
            tests_that_failed.append(failed_test)
    return tests_that_failed


# Implementar.
def run_echidna_command(toolComm, final_directory):
    result = subprocess.run([toolComm, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    return result.stdout.decode('utf-8')

# Esta función está implementada específicamente para crowdfunding, generalizarla
def hardcode_constructor_parameters(fileNameTemp, max_block, funding_goal, initial_block):
    inputfile = open(fileNameTemp, 'r').readlines()
    constructor_lines = get_constructor_from_file(inputfile).splitlines()
    # hacer otra función que sea la que crea el constructor
    # constructor_lines = build_new_constructor(constructor_lines, max_block, funding_goal, initial_block)
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