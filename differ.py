import filecmp
import os

def diff(file1Name, file2Name):
    result = filecmp.cmp(file1Name, file2Name)
    if result == False:
        print(file1Name + " is different from " + file2Name)

benchmark_contracts = [
    "HelloBlockchain",
    "SimpleMarketplace",
    "AssetTransfer",
    "AssetTransferFixed"
]

def diff_epa_graphs(test_limit, contracts_to_compare):
  for contract in contracts_to_compare:
      verisol_graph = f'graph/{contract}_Mode.epa'
      graph_file_name = contract[:-5] if 'Fixed' in contract else contract
      echidna_graph = f'echidna_output/{contract}/{test_limit}/epa/graph/{graph_file_name}Mode.epa'
      diff(verisol_graph, echidna_graph)

def diff_states_graphs(test_limit, contracts_to_compare):
  for contract in contracts_to_compare:
      verisol_graph = f'graph/{contract}_Mode.states'
      graph_file_name = contract[:-5] if 'Fixed' in contract else contract
      echidna_graph = f'echidna_output/{contract}/{test_limit}/states/graph/{graph_file_name}Mode.states'
      diff(verisol_graph, echidna_graph)

def main():
  contracts_to_compare = benchmark_contracts
  test_limit = 100
  diff_epa_graphs(test_limit, contracts_to_compare)
  diff_states_graphs(test_limit, contracts_to_compare)

# formatos:
# echidna_output/AssetTransfer/100/epa/graph/AssetTransferMode.epa
# graph/AssetTransfer_Mode.epa

# para los fixed:
# echidna_output/AssetTransferFixed/100/epa/graph/AssetTransferMode.epa
# graph/AssetTransferFixed_Mode.epa