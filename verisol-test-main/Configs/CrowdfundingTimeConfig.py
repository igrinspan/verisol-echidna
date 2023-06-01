fileName = "CrowdfundingT.sol"
contractName = "Crowdfunding"
functions = [
"Donate();",
"GetFunds();",
"Claim();",
"t();"
]
statePreconditions = [
"(max_block > blockNumber)",
"(max_block < blockNumber && goal <= balance)",
"(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
"true"
]
functionPreconditions = [
"backers[msg.sender] == 0",
"msg.sender == owner",
"backers[msg.sender] != 0",
"true"
]
functionVariables = ""
tool_output = "Found a counterexample"

statesModeState = [[1,0,0,0,0], [0,2,0,0,0], [0,0,3,0,0], [0,0,0,4,0], [0,0,0,0,5]]
statesNamesModeState = ["Vacio sin balance", "Vacio con balance", "Donate", "Funds", "Claim"]
statePreconditionsModeState = [
"(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0 && max_block < blockNumber)", 
"(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0 && max_block < blockNumber)", 
"(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)", 
"!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
"!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
]

constructors = [
    ["owner = msg.sender;", f"max_block = 4;", f"goal = 9;", "balance = 0;", f"blockNumber = 0;"],
    ["owner = msg.sender;", f"max_block = 4;", f"goal = 0;", "balance = 0;", f"blockNumber = 0;"],
    ["owner = msg.sender;", f"max_block = 2;", f"goal = 5;", "balance = 4;", f"blockNumber = 3;"],
    ["owner = msg.sender;", f"max_block = 2;", f"goal = 5;", "balance = 0;", f"blockNumber = 3;"],
    ["owner = msg.sender;", f"max_block = 2;", f"goal = 5;", "balance = 10;", f"blockNumber = 3;"]
]

# epaExtraConditions = "address(this).balance == 0"
txBound = 5