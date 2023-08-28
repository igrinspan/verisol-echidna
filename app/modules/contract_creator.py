from file_manager import create_file, write_file, write_file_from_string
import numpy as np
from enum import Enum
from contract_config import Mode

CONTRACT_SPLITS = 8
QUERIES_COUNT_THRESHOLD = 500

class ContractCreator:
    def __init__(self, config_variables):
        self.directory = config_variables.dir
        self.config_variables = config_variables
        self.target_contract = config_variables.contractName

    def create_init_contract(self):
        filename_temp = create_file("init", self.directory, self.config_variables.fileName, self.target_contract)
        body, _ = get_init_output(self.config_variables)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, self.target_contract)
        self.transform_contract_for_init(filename_temp)
        self.change_for_constructor_fuzzing(filename_temp)
        return filename_temp

    # No se usa. Es sólo cuando se quiere correr un contrato sin separar las queries.
    def create_transitions_contract(self, pre_require, states, pre_assert, extra_cond):
        filename_temp = create_file("transitions", self.directory, self.config_variables.fileName, self.target_contract)
        body, _ = get_valid_transitions_output(pre_require, pre_assert, extra_cond, extra_cond, self.config_variables.functions, states, self.config_variables)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, self.target_contract)
        self.change_for_constructor_fuzzing(filename_temp)
        return filename_temp
    

    def create_multiple_transitions_contracts(self, pre_require, states, pre_assert, extra_cond):
        queries, function_names  = get_valid_transitions_output(pre_require, pre_assert, extra_cond, extra_cond, self.config_variables.functions, states, self.config_variables)
        # De function_names podemos sacar la cantidad de queries que se crearon y en base a eso ver cuántos contratos distintos creamos.
        queries_count = len(function_names)
        contracts = []
        if queries_count > QUERIES_COUNT_THRESHOLD:
            splits = CONTRACT_SPLITS
            queries_splitted = np.array_split(queries, splits) # Crea un arreglo de arreglos de queries.
            for idx, queries_list in enumerate(queries_splitted):
                body = "" # Acá metemos las queries que queremos para el nuevo contrato.
                for query in queries_list:
                    body += query
                body = self.clean_true_requires(body)
                filename_temp = create_file(f"transitions{idx}", self.directory, self.config_variables.fileName, self.target_contract) # esto hace un archivo nuevo copiando los contenidos de EPXCrowdsale.sol
                write_file(filename_temp, body, self.target_contract)
                contracts.append(filename_temp)
        else:
            body = ""
            for query in queries:
                body += query
            body = self.clean_true_requires(body)
            filename_temp = create_file("transitions", self.directory, self.config_variables.fileName, self.target_contract)
            write_file(filename_temp, body, self.target_contract)
            contracts = [filename_temp]
            
        for contract in contracts:
            self.change_for_constructor_fuzzing(contract)

        return contracts
    

    def transform_contract_for_init(self, filename_temp):
        new_contract_body = self.remove_everything_after_constructor(filename_temp)
        write_file_from_string(filename_temp, new_contract_body)

    def remove_everything_after_constructor(self, filename_temp):
        file_lines = open(filename_temp, 'r').readlines()
        _, _, contract_end = self.contract_body(file_lines)
        _, constructor_end = self.get_constructor_start_and_end_lines(file_lines)
        new_contract_lines = file_lines[:constructor_end + 1] + ["}"]
        if contract_end < len(file_lines) - 1:
            new_contract_lines += file_lines[contract_end + 1:]

        return new_contract_lines

    def contract_body(self, file_lines):
        start = find_contract_start_line(file_lines, self.target_contract)
        end = find_contract_end_line(file_lines, self.target_contract)
        return file_lines[start:end+1], start, end

    # Para modo epa
    def create_combinations_contract(self, preconditions, extraconditions):
        fileNameTemp = create_file('combinations', self.directory, self.config_variables.fileName, self.target_contract)
        body, _ = get_valid_preconditions_output(preconditions, extraconditions)
        body = self.clean_true_requires(body)
        write_file(fileNameTemp, body, self.target_contract)
        return fileNameTemp
 
    def clean_true_requires(self, body):
        lines = body.replace("require(true);", "").split('\n')
        cleaned_lines = [line for line in lines if line.strip()]
        new_body = '\n'.join(cleaned_lines)
        return new_body

    def get_constructor_start_and_end_lines(self, input_file):
        in_target_contract = False
        in_constructor = False
        for index, line in enumerate(input_file):
            if line.strip().startswith("contract " + self.target_contract):
                in_target_contract = True

            if in_target_contract and line.strip().startswith('constructor') and not is_a_comment(line):
                in_constructor = True
                target_constructor_start_line = index

            if in_target_contract and in_constructor and line.strip() == "}":
                target_constructor_end_line = index + 1
                break

        return target_constructor_start_line, target_constructor_end_line

    # Pure
    def create_modifier(self, name, require_clauses):
        res = f"\tmodifier {name} {{\n"
        for require in require_clauses:
            res += f"\t\trequire({require});\n"
        res += "\t\t_;\n"
        res += "\t}\n\n"
        return res

    # Pure
    def has_initialized_code(self):
        has_initialized_modifier = self.create_modifier("hasInitialized", ["has_initialized"])
        has_not_initialized_modifier = self.create_modifier("hasNotInitialized", ["!has_initialized"])
        has_initialized_declaration = "\tbool has_initialized = false;\n\n"
        return has_initialized_modifier + has_not_initialized_modifier + has_initialized_declaration

    def change_for_constructor_fuzzing(self, contract_filename):
        has_initialized_initial_code = self.has_initialized_code() 
        write_file(contract_filename, has_initialized_initial_code, self.target_contract)

        new_lines = self.add_modifier_to_contract_functions(contract_filename, "hasInitialized")

        change_status = "\t\t\t\thas_initialized = true;\n"
        start, end = self.get_constructor_start_and_end_lines(new_lines)
        new_lines = new_lines[:end-1] + [change_status] + new_lines[end-1:]
        new_lines[start] = new_lines[start].replace("constructor", "function my_constructor").replace(")", ") hasNotInitialized", 1)

        write_file_from_string(contract_filename, new_lines)

    def add_modifier_to_contract_functions(self, contract_filename, modifier_name):
        lines = open(contract_filename, 'r').readlines()
        new_lines = []
        in_contract = False
        for line in lines:
            if line.strip().startswith("contract " + self.target_contract) and not is_a_comment(line):
                in_contract = True
            if in_contract and line.strip().startswith("function") and not is_a_comment(line):
                new_lines += [line.replace(")", f") {modifier_name}", 1)] # el 1 indica la cantidad de reemplazos.
            else:
                new_lines += [line]
        return new_lines



def find_contract_start_line(contract_lines, contract_name):
    for idx, line in enumerate(contract_lines):
        if f"contract {contract_name}" in line and not(is_a_comment(line)): 
            return idx
    
def find_contract_end_line(contract_lines, contract_name):
    inside_function = False
    bracket_count = 0
    start_position = find_contract_start_line(contract_lines, contract_name)

    for idx, line in enumerate(contract_lines):
        if idx == start_position:  
            bracket_count = 1
            inside_function = True
            continue
        
        if inside_function and '{' in line and not(is_a_comment(line)):
            bracket_count += 1
        if inside_function and '}' in line and not(is_a_comment(line)):
            bracket_count -= 1
        if inside_function and bracket_count == 0:
            return idx 

def is_a_comment(line):
    return line.strip().startswith('//') or line.strip().startswith('/*') or line.strip().startswith('*') or line.strip().startswith('*/')

def get_valid_preconditions_output(preconditions, extraConditions):
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionRequire, "0", "0")
        tempFunctionNames.append(functionName)
        #temp_function = functionOutput(functionName) + "\n"
        temp_function = functionOutputWithoutParameters(functionName) + "\n"  # probando el discard en epa mode
        temp_function += output_valid_state(preconditionRequire, extraConditions[indexPreconditionRequire])
        temp_output += temp_function + "\t}\n"
    return temp_output, tempFunctionNames

def get_valid_transitions_output(preconditionsThread, preconditions, extraConditionsTemp, extraConditions, functions, statesThread, config_variables): 
    temp_output = ""
    tempFunctionNames = []
    all_queries = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsThread):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                extraConditionPre = extraConditionsTemp[indexPreconditionRequire]
                extraConditionPost = extraConditions[indexPreconditionAssert]
                if (indexFunction + 1) in statesThread[indexPreconditionRequire] and config_variables.mode == Mode.epa:
                    # Abstraer esto de acá abajo en una función aparte
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName, config_variables) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost, config_variables)
                    temp_function += "\n\t}\n"
                    temp_output += temp_function
                    all_queries.append(temp_function)

                elif config_variables.mode == Mode.states:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName, config_variables) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost, config_variables)
                    temp_function += "\n\t}\n"
                    temp_output += temp_function
                    all_queries.append(temp_function)

    return all_queries, tempFunctionNames

def get_init_output(config_variables): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(config_variables.preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0" , "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName, config_variables) + "\n"
        temp_function += output_init_function(preconditionAssert, config_variables.extraConditions[indexPreconditionAssert])
        temp_output += temp_function + "\n\t}\n"
    return temp_output, tempFunctionNames

def functionOutput(number, config_variables):
    return "\tfunction vc" + number + "(" + config_variables.functionVariables + ") payable public {"

# Pure
def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

# Pure
def functionOutputWithoutParameters(number):
    return "\tfunction vc" + number + "() public returns(bool){"

def output_valid_state(preconditionRequire, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    return f"\t\treturn({preconditionRequire});\n"  # Para property testing
    # print(f"extraConditionOutput: {extraConditionOutput}")
    # return "require("+preconditionRequire+");\n" + extraConditionOutput + "assert(false);\n"

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre, extraConditionPost, config_variables):
    if config_variables.mode == Mode.epa:
        precondictionFunction = config_variables.functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "\t\trequire("+preconditionRequire+");\n\t\trequire("+precondictionFunction+");\n\t\t" + extraConditionOutputPre + "\t\t" + function + "\n"  + "\t\tassert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput

def output_init_function(preconditionAssert, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    verisolFucntionOutput =  extraConditionOutput + "\t\tassert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

# Pure
def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require("+condition+");\n"
    return extraConditionOutput 

# Pure
def extract_query_name_from_function_line(line):
    return line.strip().split('(')[0].split(' ')[1][2:] # hago el strip por si hay algún espacio de más.
