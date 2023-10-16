import graphviz
from modules.contract_config import Mode

class Graph:
    def __init__(self, config_variables):
        self.graph = graphviz.Digraph(comment=config_variables.contractName)
        self.dir = config_variables.dir
        self.config_variables = config_variables

    def build_graph(self, init_tests_that_failed, transition_tests_that_failed):
        # xxx_tests_that_failed = [   ([s1, s2, f], " "), ..., ([s1, s2, f], "?")])   ]
        self.add_failed_tests_init(init_tests_that_failed)
        self.add_failed_tests_transition(transition_tests_that_failed)
        self.graph.render(f"{self.dir}/graph/{self.config_variables.contractName}_{self.config_variables.mode}")

    # Private methods
    def add_failed_tests_init(self, tests_that_failed):
        for test in tests_that_failed:
            parameters = test[0]
            result = test[1]
            self.add_init_node_to_graph(parameters, result)

    def add_failed_tests_transition(self, tests_that_failed):
        for test in tests_that_failed:
            parameters = test[0]
            result = test[1]
            self.add_node_to_graph(parameters[0], parameters[1], parameters[2], self.config_variables.states, result)

    def add_node_to_graph(self, id_precondition_require, id_precondition_assert, id_function, states, result):
        self.graph.node( # Nodo fuente
            combination_to_string(states[id_precondition_require]),
            output_combination(id_precondition_require, states, self.config_variables),
        )
        self.graph.node( # Nodo destino
            combination_to_string(states[id_precondition_assert]),
            output_combination(id_precondition_assert, states, self.config_variables),
        )
        self.graph.edge( # Eje
            combination_to_string(states[id_precondition_require]),
            combination_to_string(states[id_precondition_assert]),
            label=f"{self.config_variables.functions[id_function]} {result}",
        )

    def add_init_node_to_graph(self, init_test, result):
        id_precondition_assert = init_test[0]
        self.graph.node("init", "init")
        self.graph.node(
            combination_to_string(self.config_variables.states[id_precondition_assert]),
            output_combination(id_precondition_assert, self.config_variables.states, self.config_variables),
        )
        self.graph.edge(
            "init", combination_to_string(self.config_variables.states[id_precondition_assert]), f"constructor {result}"
        )


class OutputPrinter:
    """ Imprime los ejes encontrados por consola y la cantidad de fails de VeriSol. """
    def __init__(self, config_variables):
        self.directory = config_variables.dir
        self.config_variables = config_variables

    def print_results(self, transition_tests_that_failed, init_tests_that_failed):
        self.print_failed_tests(transition_tests_that_failed)
        self.print_failed_tests(init_tests_that_failed, True)

    def print_verisol_fails(self, verisol_fails):
        total_to = f"# Time Out: {verisol_fails.number_to}"
        total_cfail1 = f"# Corral Fail without trackvars: {verisol_fails.number_corral_fail}"
        total_cfail2 = f"# Corral Fail with trackvars: {verisol_fails.number_corral_fail_with_tackvars}"

        print(total_to)
        print(total_cfail1)
        print(total_cfail2)

    # Private methods
    def print_failed_tests(self, tests_that_failed, init=False):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], self.config_variables.states, self.config_variables)}")
        else:
            for test in tests_that_failed:
                print_output(
                    test[0],
                    test[2],
                    test[1],
                    self.config_variables.states,
                    self.config_variables.states,
                    self.config_variables,
                )  # print_output recibe como segundo param la función y tercero el assert.


def print_output(id_prec_require, id_function, id_prec_assert, combinations, full_combination, config_variables):
    output = (
        "Desde el estado: "
        + output_combination(id_prec_require, combinations, config_variables)
        + "\nHaciendo: "
        + config_variables.functions[id_function]
        + "\nLlegas al estado: "
        + output_combination(id_prec_assert, full_combination, config_variables)
        + "\n---------"
    )
    print(output)


# Pure
def combination_to_string(combination):
    output = ""
    for i in combination:
        output += str(i) + "-"
    return output


def output_combination(idx_combination, many_combinations, config_variables):
    combination = many_combinations[idx_combination]
    output = ""
    for function in combination:
        if function != 0:
            if config_variables.mode == Mode.epa:
                output += config_variables.functions[function - 1] + "\n"
            else:
                output += config_variables.statesNames[function - 1]

    if output == "":
        output = "Vacio\n"
    return output
