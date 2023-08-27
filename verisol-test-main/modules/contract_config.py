from dataclasses import dataclass
from enum import Enum
import itertools

class Mode(Enum):
    epa = "epa"
    states = "states"


class ConfigImporter:
    def __init__(self, contract_config_file, config_variables_object):
        self.contract_config_file = contract_config_file
        self.config_variables = config_variables_object

    def import_config_variables(self):
        c = self.contract_config_file
        self.config_variables.fileName = "Contracts/" + c.fileName
        self.config_variables.contractFileName = c.fileName
        self.config_variables.functions = c.functions
        self.config_variables.statePreconditions = c.statePreconditions
        self.config_variables.statesNames = c.statesNamesModeState
        self.config_variables.statePreconditions = c.statePreconditions
        self.config_variables.contractName = c.contractName
        self.config_variables.functionVariables = c.functionVariables
        self.config_variables.functionPreconditions = c.functionPreconditions
        self.config_variables.statePreconditionsModeState = c.statePreconditionsModeState
        self.config_variables.statesModeState = c.statesModeState

    # Se ejecuta en el main para cargar las variables preconditions, states y extraConditions, dependiendo del modo.
    def prepare_variables(self, mode, funcionesNumeros):
        if mode == Mode.epa:
            self.update_variables_for_epa_mode(funcionesNumeros)
        else:
            self.update_variables_for_states_mode()

        self.config_variables.preconditionsThreads = self.config_variables.preconditions
        self.config_variables.statesThreads = self.config_variables.states
        self.config_variables.extraConditionsThreads = self.config_variables.extraConditions

    def update_variables_for_epa_mode(self, funcionesNumeros):
        self.config_variables.states = self.getCombinations(funcionesNumeros)
        self.config_variables.preconditions = self.getPreconditions(funcionesNumeros)
        try:
            self.config_variables.extraConditions = [self.contract_config_file.epaExtraConditions for i in range(len(self.config_variables.states))]
        except:
            self.config_variables.extraConditions = ["true" for i in range(len(self.config_variables.states))]

    def update_variables_for_states_mode(self):
        self.config_variables.preconditions = self.config_variables.statePreconditionsModeState
        self.config_variables.states = self.config_variables.statesModeState
        try:
            self.config_variables.extraConditions = self.contract_config_file.statesExtraConditions
        except:
            self.config_variables.extraConditions = ["true" for i in range(len(self.config_variables.states))]

    def getCombinations(self, funcionesNumeros):
        truePreconditions = []
        results = []
        statesTemp = []
        count = len(funcionesNumeros)
        for index, statePrecondition in enumerate(self.config_variables.statePreconditions):
            if statePrecondition == "true":
                truePreconditions.append(index + 1)

        # Combinations
        for L in range(len(funcionesNumeros) + 1):
            for subset in itertools.combinations(funcionesNumeros, L):
                isTrue = True
                for truePre in truePreconditions:
                    if truePre not in subset:
                        isTrue = False
                if isTrue == True:
                    results.append(subset)

        for partialResult in results:
            paddingResult = []
            paddingResult = [0 for i in range(count)] 
            for i in range(count):
                if len(partialResult) > i and partialResult[i] >=0:
                    indice = partialResult[i]
                    paddingResult[indice-1] = indice
            statesTemp.append(paddingResult)
        statesTemp2 = []
        
        for combination in statesTemp:
            isCorrect = True
            for iNumber, number in enumerate(combination):
                for idx, x in enumerate(self.config_variables.statePreconditions):
                    if iNumber != idx:
                        if number == 0:
                            if self.config_variables.statePreconditions[iNumber] == x and combination[idx] != 0:
                                isCorrect = False
                        elif self.config_variables.statePreconditions[iNumber] == x and not((idx+1) in combination):
                            isCorrect = False
            
            if isCorrect:
                statesTemp2.append(combination)
                
        return statesTemp2

    def getPreconditions(self, funcionesNumeros):
        preconditions = []
        for result in self.config_variables.states:
            precondition = ""
            for number in funcionesNumeros:
                if precondition != "":
                    precondition += " && "
                if number in result:
                    precondition += self.config_variables.statePreconditions[number-1]
                else:
                    precondition += "!(" + self.config_variables.statePreconditions[number-1] + ")"
            preconditions.append(precondition)
        return preconditions


@dataclass
class ConfigVariables:
    states: list = None
    preconditions: list = None
    extraConditions: list = None
    functions: list = None
    functionVariables: list = None
    functionPreconditions: list = None
    statesThreads: list = None
    preconditionsThreads: list = None
    extraConditionsThreads: list = None
    contractName: str = None
    contractFileName: str = None
    fileName: str = None
    statePreconditions: list = None
    statesNames: list = None
    statePreconditionsModeState: list = None
    statesModeState: list = None
    dir: str = None
    dir_name: str = None
    mode: Mode = None