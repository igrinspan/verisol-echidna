fileName = "00_CrowdfundingEch.sol"
contractName = "Crowdfunding"
functions = [
"donate(_inc);",
"getFunds();",
"claim();",
"tau(_inc);"
]
statePreconditions = [
"(max_block > block_number)",
"(max_block < block_number && goal <= address(this).balance)",
"(max_block < block_number && !funded && goal > address(this).balance)",
"true"
]
functionPreconditions = [
"backers[msg.sender] == 0",
"msg.sender == owner",
"backers[msg.sender] != 0",
"true"
]
functionVariables = "uint256 _inc"
tool_output = "Found a counterexample"

statesModeState = [[1,0,0,0,0], [0,2,0,0,0], [0,0,3,0,0], [0,0,0,4,0], [0,0,0,0,5]]
statesNamesModeState = ["Vacio sin balance", "Vacio con balance", "Donate", "Funds", "Claim"]
statePreconditionsModeState = [
"(!(max_block > block_number) && !(max_block < block_number && goal <= address(this).balance) && !(block_number > max_block && !funded && goal > address(this).balance) && address(this).balance == 0)", 
"(!(max_block > block_number) && !(max_block < block_number && goal <= address(this).balance) && !(block_number > max_block && !funded && goal > address(this).balance) && address(this).balance > 0)", 
"(max_block > block_number) && !(max_block < block_number && goal <= address(this).balance) && !(block_number > max_block && !funded && goal > address(this).balance)", 
"!(max_block > block_number) && (max_block < block_number && goal <= address(this).balance) && !(block_number > max_block && !funded && goal > address(this).balance)",
"!(max_block > block_number) && !(max_block < block_number && goal <= address(this).balance) && (block_number > max_block && !funded && goal > address(this).balance)",
]

# epaExtraConditions = "address(this).balance == 0"
txBound = 6