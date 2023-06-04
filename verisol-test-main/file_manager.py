import os
import shutil

def create_directory(index):
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'output'+str(index))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)
    return final_directory

def delete_directory(final_directory):
    shutil.rmtree(final_directory)

def create_file(index, final_directory, fileName, contractName):
    fileNameTemp = "OutputTemp"+str(index)+".sol"
    fileNameTemp = final_directory +"/"+ fileNameTemp
    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)
    shutil.copyfile(fileName, fileNameTemp)
    return fileNameTemp

def write_file(fileNameTemp, body, contractName):
    new_body = clean_true_requires(body)
    inputfile = open(fileNameTemp, 'r').readlines()
    write_file = open(fileNameTemp,'w')
    for line in inputfile:
        write_file.write(line)
        if 'contract ' + contractName in line:
                write_file.write(new_body)
    write_file.close()

def clean_true_requires(body):
    new_body = ""
    for line in body.splitlines():
        if line != "require(true);":
            new_body +=  line + "\n"
    return new_body

def write_file_from_string(fileNameTemp, array_of_strings):
    write_file = open(fileNameTemp,'w')
    for line in array_of_strings:
        write_file.write(line)
    write_file.close()

def read_from_file(fileNameTemp):
    inputfile = open(fileNameTemp, 'r').readlines()
    return "".join(inputfile)