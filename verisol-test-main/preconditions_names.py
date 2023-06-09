import sys

sys.path.append("/Users/iangrinspan/Documents/1C2023/Beca/verisol-echidna/verisol-test-main/Configs")

config = __import__('CrowdfundingTimeBalanceConfig', level=0)

statesNames = config.statesNamesModeState
statePreconditions = config.statePreconditionsModeState

print(f'\nStates: {statesNames}\n')
print(f'Preconditions: {statePreconditions}\n')


statesNamesModeState = ["Vacio sin balance", "Vacio con balance", "Donate", "Funds", "Claim"]
statePreconditionsModeState = [
    "(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance == 0)",
    "(!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0) && balance > 0)",
    "(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
    "!(max_block > blockNumber) && (max_block < blockNumber && goal <= balance) && !(blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
    "!(max_block > blockNumber) && !(max_block < blockNumber && goal <= balance) && (blockNumber > max_block && !funded && goal > balance && backersArray.length != 0)",
]

def build_state_predicate(state_index):
  function_name = statesNamesModeState[state_index]
  function_name = "_".join((function_name).split())
  first_line = "function " + function_name + "() view returns(bool) {" + newline(1)
  body = tabs(2) + "return" + statePreconditionsModeState[state_index] + newline(1)
  return first_line + body + newline(1) + tabs(1) +  "}"


def tabs(count):
  return "\t" * count

def newline(count):
  return "\n" * count
