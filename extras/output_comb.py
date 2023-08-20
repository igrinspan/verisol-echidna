mode = "epa"
functions = ["e", "p", "a"]
statesNames = ["e", "p", "a", "ep", "ea", "pa", "epa"]

def output_combination(indexCombination, tempCombinations):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            if mode == "epa":
                output += functions[function-1] +"\n"
            else:
                output += statesNames[function-1]

    if output == "":
        output = "Vacio\n"
    return output