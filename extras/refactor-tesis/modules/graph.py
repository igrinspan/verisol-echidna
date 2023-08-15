import graphviz
from enum import Enum

class Mode(Enum):
    epa = "epa"
    states = "states"

class Graph:
    def __init__(self, config_variables):
        self.graph = graphviz.Digraph(comment=config_variables.contractName)
        self.dir = config_variables.dir
        self.config_variables = config_variables

    def build_graph(self, transition_tests_that_failed, init_tests_that_failed):
        self.add_failed_tests_init(init_tests_that_failed)
        self.add_failed_tests_transition(transition_tests_that_failed)
        self.graph.render(f"{self.dir}/graph/{self.config_variables.contractName}{self.config_variables.mode}")

    def add_failed_tests_init(self, tests_that_failed):
        for test in tests_that_failed:
            self.add_init_node_to_graph(test)

    def add_failed_tests_transition(self, tests_that_failed):
        for test in tests_that_failed:
            self.add_node_to_graph(test[0], test[1], test[2], self.config_variables.states)

    def add_node_to_graph(self, indexPreconditionRequire, indexPreconditionAssert, indexFunction, states):
        self.graph.node(combinationToString(states[indexPreconditionRequire]), output_combination(indexPreconditionRequire, states, self.config_variables))
        self.graph.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states, self.config_variables))
        self.graph.edge(combinationToString(states[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=self.config_variables.functions[indexFunction])

    def add_init_node_to_graph(self, init_test): 
        indexPreconditionAssert = init_test[0]
        self.graph.node("init", "init")
        self.graph.node(combinationToString(self.config_variables.states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, self.config_variables.states, self.config_variables))
        self.graph.edge("init",combinationToString(self.config_variables.states[indexPreconditionAssert]), "constructor")
# Pure
def combinationToString(combination):
    output = ""
    for i in combination:
        output += str(i) + "-"
    return output


def output_combination(indexCombination, tempCombinations, config_variables):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            if str(config_variables.mode) == str(Mode.epa):
                output += config_variables.functions[function-1] +"\n"
            else:
                output += config_variables.statesNames[function-1]

    if output == "":
        output = "Vacio\n"
    return output
