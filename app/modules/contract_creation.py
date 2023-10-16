import numpy as np
import os

from modules.file_manager import create_file, write_file, write_file_from_string, create_directory_2
from modules.contract_config import Mode

# Clases: 
# - ContractCreator (superclase)
#   - EchidnaContractCreator
#   - VerisolContractCreator

# A los ContractCreators les entra un objeto config_variables, del que sacan todo lo necesario:
# states, preconditions, extraconditions, function_names, function_variables...

# En la clase ContractCreator me quedaron varias funciones que en realidad son específicas de cada subclase.
# Por ejemplo, change_for_constructor_fuzzing es sólo del EchidnaContractCreator y get_valid_preconditions_output del VerisolContractCreator.
# Las únicas 2 funciones de las que se comparte la signatura pero no la implementación son create_init_contract y create_multiple_transitions_contracts.

# Al final del módulo me quedaron algunas funciones sueltas que son usadas por funciones de los ContractCreators. Podrían ser agregadas a la superclase.


QUERIES_COUNT_THRESHOLD = 250


class ContractCreator:
    # Public methods
    def create_contract_creator(self, config_variables, tool):
        if tool == "verisol":
            return VerisolContractCreator(config_variables)
        elif tool == "echidna":
            return EchidnaContractCreator(config_variables)
        else:
            raise Exception("Invalid tool name")

    def create_init_contract(self):
        # Method is implemented by subclass.
        pass

    def create_multiple_transitions_contracts(self, count):
        # Method is implemented by subclass.
        pass

    # Private methods
    def transform_contract_for_init(self, filename_temp):
        new_contract_body = self.remove_everything_after_constructor(filename_temp)
        write_file_from_string(filename_temp, new_contract_body)

    def remove_everything_after_constructor(self, filename_temp):
        file_lines = open(filename_temp, "r").readlines()
        _, _, contract_end = self.contract_body(file_lines)
        _, constructor_end = self.get_constructor_start_and_end_lines(file_lines)
        new_contract_lines = file_lines[: constructor_end + 1] + ["}"]
        if contract_end < len(file_lines) - 1:
            new_contract_lines += file_lines[contract_end + 1 :]
        return new_contract_lines

    def contract_body(self, file_lines):
        start = find_contract_start_line(file_lines, self.target_contract)
        end = find_contract_end_line(file_lines, self.target_contract)
        return file_lines[start : end + 1], start, end

    def clean_true_requires(self, body):
        lines = body.replace("require(true);", "").split("\n")
        cleaned_lines = [line for line in lines if line.strip()]
        new_body = "\n".join(cleaned_lines)
        return new_body

    def get_constructor_start_and_end_lines(self, input_file):
        target_constructor_start_line = -1
        target_constructor_end_line = -1

        in_target_contract = False
        in_constructor = False

        for index, line in enumerate(input_file):
            if line.strip().startswith("contract " + self.target_contract):
                in_target_contract = True
            if in_target_contract and line.strip().startswith("constructor") and not is_a_comment(line):
                in_constructor = True
                target_constructor_start_line = index
            if in_target_contract and in_constructor and line.strip() == "}":
                target_constructor_end_line = index + 1
                break
        return target_constructor_start_line, target_constructor_end_line

    def create_modifier(self, name, require_clauses):
        res = f"\tmodifier {name} {{\n"
        for require in require_clauses:
            res += f"\t\trequire({require});\n"
        res += "\t\t_;\n"
        res += "\t}\n\n"
        return res

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
        new_lines = new_lines[: end - 1] + [change_status] + new_lines[end - 1 :]
        new_lines[start] = (
            new_lines[start].replace("constructor", "function my_constructor").replace(")", ") hasNotInitialized", 1)
        )

        write_file_from_string(contract_filename, new_lines)

    def add_modifier_to_contract_functions(self, contract_filename, modifier_name):
        lines = open(contract_filename, "r").readlines()
        new_lines = []
        in_contract = False
        for line in lines:
            if line.strip().startswith("contract " + self.target_contract) and not is_a_comment(line):
                in_contract = True
            if in_contract and line.strip().startswith("function") and not is_a_comment(line):
                new_lines += [line.replace(")", f") {modifier_name}", 1)]  # el 1 indica la cantidad de reemplazos.
            else:
                new_lines += [line]
        return new_lines

    def get_valid_preconditions_output(self, preconditions, extra_conditions, function_variables):
        temp_output = ""
        temp_function_names = []
        for id_precondition_require, precondition_require in enumerate(preconditions):
            function_name = get_temp_function_name(id_precondition_require, "0", "0")
            temp_function_names.append(function_name)
            temp_function = functionOutput(function_name, function_variables) + "\n"
            temp_function += output_valid_state(precondition_require, extra_conditions[id_precondition_require])
            temp_output += temp_function + "\t}\n"
        return temp_output, temp_function_names

    def get_valid_transitions_output(self, preconditions, states, extra_conditions, functions, config_variables):
        # temp_output = ""
        all_queries_names = []
        all_queries = []
        for index_precondition_require, precondition_require in enumerate(preconditions):
            for index_precondition_assert, precondition_assert in enumerate(preconditions):
                for index_function, function in enumerate(functions):
                    extra_condition_pre = extra_conditions[index_precondition_require]
                    extra_condition_post = extra_conditions[index_precondition_assert]
                    if ((index_function + 1) in states[index_precondition_require] and config_variables.mode == Mode.epa) or config_variables.mode == Mode.states:
                        # Abstraer esto de acá abajo en una función aparte
                        function_name = get_temp_function_name(index_precondition_require, index_precondition_assert, index_function)
                        temp_function = functionOutput(function_name, config_variables.functionVariables) + "\n"
                        temp_function += output_transitions_function(
                            precondition_require,
                            function,
                            precondition_assert,
                            index_function,
                            extra_condition_pre,
                            extra_condition_post,
                            config_variables,
                        )
                        temp_function += "\n\t}\n"
                        # temp_output += temp_function
                        all_queries_names.append(function_name)
                        all_queries.append(temp_function)

        return all_queries, all_queries_names

    def get_init_output(self, config_variables):
        temp_output = ""
        temp_function_names = []
        for id_precondition_assert, precondition_assert in enumerate(config_variables.preconditions):
            function_name = get_temp_function_name(id_precondition_assert, "0", "0")
            temp_function_names.append(function_name)
            temp_function = functionOutput(function_name, config_variables.functionVariables) + "\n"
            temp_function += output_init_function(
                precondition_assert, config_variables.extraConditions[id_precondition_assert]
            )
            temp_output += temp_function + "\n\t}\n"
        return temp_output, temp_function_names


class EchidnaContractCreator(ContractCreator):
    def __init__(self, config_variables):
        self.directory = config_variables.dir
        self.config_variables = config_variables
        self.target_contract = config_variables.contractName

    def create_init_contract(self):
        filename_temp = create_file("init", self.directory, self.config_variables.fileName, self.target_contract)
        body, all_queries_names = self.get_init_output(self.config_variables)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, self.target_contract)
        self.transform_contract_for_init(filename_temp)
        self.change_for_constructor_fuzzing(filename_temp)
        return filename_temp, all_queries_names

    def create_multiple_transitions_contracts(self, count):
        queries, function_names = self.get_valid_transitions_output(self.config_variables.preconditions,self.config_variables.states,self.config_variables.extraConditions,self.config_variables.functions,self.config_variables,)

        # De function_names podemos sacar la cantidad de queries que se crearon.
        queries_count = len(function_names)
        contracts = []
        if queries_count > QUERIES_COUNT_THRESHOLD:
            splits = count
            queries_splitted = np.array_split(queries, splits)  # Crea un arreglo de arreglos de queries.
            for idx, queries_list in enumerate(queries_splitted):
                body = ""  # Acá metemos las queries que queremos para el nuevo contrato.
                for query in queries_list:
                    body += query
                body = self.clean_true_requires(body)
                filename_temp = create_file(f"transitions_{idx}", self.directory, self.config_variables.fileName, self.target_contract)  # esto hace un archivo nuevo copiando los contenidos de EPXCrowdsale.sol
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

        return contracts, None


class VerisolContractCreator(ContractCreator):
    def __init__(self, config_variables):
        self.directory = config_variables.dir
        self.config_variables = config_variables
        self.target_contract = config_variables.contractName

    def create_preconditions_contract(self, preconditions, extraconditions, thread_id):
        """ Se usa en el discard_unreachable_states. Sólo en el modo EPA."""
        new_dir = create_directory_2(self.config_variables.dir, f"thread_{thread_id}")
        filename_temp = create_file("preconditions", new_dir, self.config_variables.fileName, self.target_contract)
        body, all_queries_names = self.get_valid_preconditions_output(preconditions, extraconditions, self.config_variables.functionVariables)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, self.target_contract)
        filename_temp = os.path.realpath(filename_temp)
        return filename_temp, all_queries_names

    def create_init_contract(self):  # Es lo mismo que para echidna pero sin el constructor fuzzing.
        filename_temp = create_file("init", self.directory, self.config_variables.fileName, self.target_contract)
        body, all_queries_names = self.get_init_output(self.config_variables)
        body = self.clean_true_requires(body)
        write_file(filename_temp, body, self.target_contract)
        self.transform_contract_for_init(filename_temp)
        filename_temp = os.path.realpath(filename_temp)
        return filename_temp, all_queries_names

    def create_multiple_transitions_contracts(self, count):
        contracts = []
        # queries_names_per_contract = []

        queries, queries_names = self.get_valid_transitions_output(self.config_variables.preconditions,self.config_variables.states,self.config_variables.extraConditions,self.config_variables.functions,self.config_variables,)

        queries_splitted = np.array_split(queries, count)  # Crea un arreglo de arreglos de queries.
        names_splitted = np.array_split(queries_names, count)
        for idx, queries_list in enumerate(queries_splitted):
            if len(queries_list) == 0:
                # print(f"Queries list vacío para idx={idx}, no se crea contrato de transiciones.")
                continue
            # Acá metemos las queries que queremos para el nuevo contrato.
            body = ''.join(queries_list)
            body = self.clean_true_requires(body)
            new_dir = create_directory_2(self.config_variables.dir, f"thread_{idx}")
            # create_file hace un archivo nuevo copiando los contenidos de EPXCrowdsale.sol
            filename_temp = create_file(f"transitions_{idx}", new_dir, self.config_variables.fileName, self.target_contract)
            write_file(filename_temp, body, self.target_contract)
            filename_temp = os.path.realpath(filename_temp)
            contracts.append(filename_temp)
            # queries_names_per_contract.append()  # lista con listas de queries para cada contrato.

        return contracts, names_splitted



def find_contract_start_line(contract_lines, contract_name):
    for idx, line in enumerate(contract_lines):
        if f"contract {contract_name}" in line and not is_a_comment(line):
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

        if inside_function and "{" in line and not is_a_comment(line):
            bracket_count += 1
        if inside_function and "}" in line and not is_a_comment(line):
            bracket_count -= 1
        if inside_function and bracket_count == 0:
            return idx

    return -1


def is_a_comment(line):
    return any(line.strip().startswith(prefix) for prefix in ["//", "/*", "*", "*/"])


def functionOutput(number, function_variables):
    return "\tfunction vc" + number + "(" + function_variables + ") payable public {"


def get_temp_function_name(id_require, id_assert, id_function):
    return str(id_require) + "x" + str(id_assert) + "x" + str(id_function)


def output_valid_state(precondition_require, extra_condition):
    extra_condition_output = get_extra_condition_output(extra_condition)
    return ("\t\trequire("+precondition_require+");\n" 
            + extra_condition_output 
            + "\t\tassert(false);\n")


def output_transitions_function(precondition_require, function, precondition_assert, id_function, extra_condition_pre, extra_condition_post, config_variables):
    if config_variables.mode == Mode.epa:
        function_precondition = config_variables.functionPreconditions[id_function]
    else:
        function_precondition = "true"
    extra_condition_output_pre = get_extra_condition_output(extra_condition_pre)
    verisol_function_output = (
        "\t\trequire("+ precondition_require + ");\n"
        + "\t\trequire(" + function_precondition + ");\n"
        + "\t\t" + extra_condition_output_pre
        + "\t\t" + function + "\n"
        + "\t\tassert(!(" + precondition_assert + "&& " + extra_condition_post + "));"
    )
    return verisol_function_output


def output_init_function(precondition_assert, extra_condition):
    extra_condition_output = get_extra_condition_output(extra_condition)
    verisol_function_output = extra_condition_output + "\t\tassert(!(" + precondition_assert + "));"
    return verisol_function_output


def get_extra_condition_output(condition):
    extra_condition_output = ""
    if condition != "" and condition != None:
        extra_condition_output = "require(" + condition + ");\n"
    return extra_condition_output
