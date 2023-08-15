from enum import Enum

class Mode(Enum):
    epa = "epa"
    states = "states"

class OutputPrinter:
    def __init__(self, config_variables):
        self.directory = config_variables.dir
        self.config_variables = config_variables

    def print_results(self, transition_tests_that_failed, init_tests_that_failed):
        self.print_failed_tests(transition_tests_that_failed)
        self.print_failed_tests(init_tests_that_failed, True)
        # write_file = open(f'{self.directory}/resultados.txt','a')
        # write_file.write(f"\n --------------\n")
        # write_file.write(f"Resultados de init:\n {init_tests_that_failed}\n\n")
        # write_file.write(f"Resultados de transitions:\n {transition_tests_that_failed}\n\n")

    def print_failed_tests(self, tests_that_failed, init=False):
        if init:
            output = "Desde el constructor, se puede llegar a: "
            for test in tests_that_failed:
                print(f"{output}  {output_combination(test[0], self.config_variables.states, self.config_variables)}")
        else:
            for test in tests_that_failed:
                print_output(test[0], test[2], test[1], self.config_variables.states, self.config_variables.states, self.config_variables) #print_output recibe como segundo param la función y tercero el assert.
 

def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination, config_variables):
    output ="Desde el estado: "+ output_combination(indexPreconditionRequire, combinations, config_variables) + "\nHaciendo: " + config_variables.functions[indexFunction] + "\nLlegas al estado: " + output_combination(indexPreconditionAssert, fullCombination, config_variables) + "\n---------"
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
