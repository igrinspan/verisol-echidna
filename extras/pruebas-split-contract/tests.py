import numpy as np
import sys
sys.path.append('../../verisol-test-main/modules/')
from file_manager import write_file, create_file

def get_valid_transitions_output(preconditionsThread, preconditions, extraConditionsTemp, extraConditions, functions, statesThread, functionVariables, mode, functionPreconditions): 
    temp_output = ""
    tempFunctionNames = []
    all_queries = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsThread):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                extraConditionPre = extraConditionsTemp[indexPreconditionRequire]
                extraConditionPost = extraConditions[indexPreconditionAssert]
                if (indexFunction + 1) in statesThread[indexPreconditionRequire] and mode=="epa":
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction) # ixjxk
                    tempFunctionNames.append(functionName) # ixjxk
                    temp_function = functionOutput(functionName, functionVariables) + "\n" # function vcixjxk payable public (...){
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost, mode, functionPreconditions)
                    temp_function += "\n\t}\n"
                    temp_output += temp_function
                    all_queries.append(temp_function)

                elif mode == "states":
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName, functionVariables) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost,  mode, functionPreconditions)
                    temp_function += "\n\t}\n"
                    temp_output += temp_function
                    all_queries.append(temp_function)

    return all_queries, tempFunctionNames

# Pure
def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

def functionOutput(number, functionVariables):
    return "\tfunction vc" + number + "(" + functionVariables + ") payable public {"

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre, extraConditionPost, mode, functionPreconditions):
    if mode == "epa":
        precondictionFunction = functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "\t\trequire("+preconditionRequire+");\n\t\trequire("+precondictionFunction+");\n\t\t" + extraConditionOutputPre + "\t\t" + function + "\n"  + "\t\tassert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
    return verisolFucntionOutput

# Pure
def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require("+condition+");\n"
    return extraConditionOutput 


# Config de EPXCrowdsale
fileName = "EPXCrowdsale.sol"
contractName = "EPXCrowdsale"

functions = ["SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);",
             "buy();",
             "checkGoalReached();",
             "refund();",
             "t();"
]

statePreconditions = ["(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))",
                      "(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))",
                      "isCrowdSaleSetup",
                      "((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))",
                      "true"
]
functionPreconditions = ["msg.sender == admin && msg.sender == owner",
                        "(!(msg.value == 0))",
                        "msg.sender == owner",
                        "(usersEPXfundValue[msg.sender] > 0)",
                        "true"
]

functionVariables = "uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock"

# En modo EPA quedan estas cosas:
states = [[0, 0, 0, 0, 5], [1, 0, 0, 0, 5], [0, 2, 0, 0, 5], [0, 0, 3, 0, 5], [0, 0, 0, 4, 5], [1, 2, 0, 0, 5], [1, 0, 3, 0, 5], [1, 0, 0, 4, 5], [0, 2, 3, 0, 5], [0, 2, 0, 4, 5], [0, 0, 3, 4, 5], [1, 2, 3, 0, 5], [1, 2, 0, 4, 5], [1, 0, 3, 4, 5], [0, 2, 3, 4, 5], [1, 2, 3, 4, 5]]
preconditions = ['!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !(((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !(isCrowdSaleSetup) && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !((tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true', '(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true']
extraConditions = ['true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true']
mode = "epa"

a_ver = '\tfunction vc15x15x4(uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock) payable public {\n\t\trequire((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true);\n\t\trequire(true);\n\t\trequire(true);\n\t\tt();\n\t\tassert(!((!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && true&& true));\n\t}\n'

def main():
  queries, function_names  = get_valid_transitions_output(preconditions, preconditions, extraConditions, extraConditions, functions, states, functionVariables, mode, functionPreconditions)

  # De function_names podemos sacar la cantidad de queries que se crearon y en base a eso ver cuántos contratos distintos creamos.
  queries_count = len(function_names)
  contracts = []
  if queries_count > 500:
      splits = 8
      queries_splitted = np.array_split(queries, splits) # Crea 8 arreglos de 96 queries c/u.
      for idx, queries_list in enumerate(queries_splitted):
        body = "" # Acá metemos las queries que queremos para el nuevo contrato.
        for query in queries_list:
          body += query
        body = self.clean_true_requires(body)
        filename_temp = create_file(f"transitions{idx}", ".", "EPXCrowdsale.sol", "EPXCrowdsale") # esto hace un archivo nuevo copiando los contenidos de EPXCrowdsale.sol
        print("filename_temp: ", filename_temp)
        write_file(f"transitions{idx}.sol", body, "EPXCrowdsale")
        contracts.append(f"transitions{idx}.sol")
  else:
      body = ""
      for query in queries:
        body += query
      filename_temp = create_file("transitions", ".", "EPXCrowdsale.sol", "EPXCrowdsale")
      write_file("transitions.sol", body, "EPXCrowdsale")
      contracts = ["transitions.sol"]
    
  for contract in contracts:
      change_for_constructor_fuzzing(contract)

      return contracts

  return contracts
if __name__ == "__main__":
    main()