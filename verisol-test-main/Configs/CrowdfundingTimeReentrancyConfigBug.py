fileName = "CrowdfundingTReentrancy_bug.sol"
contractName = "CrowdfundingR"
functions = [
"Donate();",
"GetFunds();",
"Claim_Init();",
"Claim_End();",
"t();"
]
statePreconditions = [
"(max_block > blockNumber)",
"(max_block < blockNumber && goal <= balance)",
"(blockNumber > max_block && !funded && goal > balance && _donadores > 0)",
"donadores_reentrada.length > 0",
"donadores_reentrada.length == 0"
]
functionPreconditions = [
"backers[msg.sender] == 0",
"msg.sender == owner",
"backers[msg.sender] > 0",
"donadores_reentrada[donadores_reentrada.length-1] == msg.sender",
"true",
"true",
"true"
]
functionVariables = ""
# functionVariables = "uint n"
tool_output = "Found a counterexample"

statesModeState = []
statesNamesModeState = []
statePreconditionsModeState = []

# epaExtraConditions = "address(this).balance == 0"
txBound = 15