def clean_true_requires(body):
    new_body = ""
    for line in body.splitlines():
        if line == "require(true);":
            print(line)
        else:
            new_body +=  line + "\n"
    return new_body


def hardcode_constructor_parameters(fileNameTemp, max_block, funding_goal, initial_block):
    print(f"fileNameTemp: {fileNameTemp}")
    print(f"max_block: {max_block}")
    print(f"funding_goal: {funding_goal}")
    print(f"initial_block: {initial_block}")
    print("------------ Actualizar acá (hardcode_constructor_parameters en echidna_module.py) ------------") ")
    return 

def create_echidna_command():
    #createConfigFile con todo lo que pedimos
    configFile = ""
    print("------------ Actualizar acá (create_echidna_command en echidna_module.py) ------------")
    commandResult =  f"echidna {fileNameTemp} --contract {contractName} --config {configFile}"
    return # commandResult

# usar esta función como ayuda para hardcodear los parámetros
# def write_file(fileNameTemp, body):
#     new_body = echidna_module.clean_true_requires(body)
#     inputfile = open(fileNameTemp, 'r').readlines()
#     write_file = open(fileNameTemp,'w')
#     fuctionCombinations = []
#     for line in inputfile:
#         write_file.write(line)
#         if 'contract ' + contractName in line:
#                 write_file.write(new_body)
#     write_file.close()