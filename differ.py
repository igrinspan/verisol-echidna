import filecmp
import os
import graphviz
import pygraphviz as pgv
import json


benchmark_contracts = [
    "HelloBlockchain",
    "BasicProvenance",
    "DefectiveComponentCounter",
    "FrequentFlyerRewardsCalculator",
    "RefrigeratedTransportation",
    "RoomThermostat",
    "SimpleMarketplace",
    "HelloBlockchainFixed",
    "SimpleMarketplaceFixed",
    "BasicProvenanceFixed",
    "DefectiveComponentCounterFixed",
    "RefrigeratedTransportationFixed",
]

class GraphData:
    def __init__(self, pgv_graph):
        self.nodes = set(pgv_graph.nodes())
        self.edges = set(pgv_graph.edges())
    
def diff(verisol_graph, echidna_graph, contract, test_limit, mode):
    g1 = GraphData(pgv.AGraph(verisol_graph))
    g2 = GraphData(pgv.AGraph(echidna_graph))
    node_difference = len(g2.nodes) - len(g1.nodes)  # si es positivo, ech encontró más.
    edge_difference = len(g2.edges) - len(g1.edges) 
    print(edge_difference, node_difference)
    diff_results.append({
        'Contract': contract,
        'Test Limit': test_limit,
        'Mode': mode,
        'Node Difference': node_difference,
        'Edge Difference': edge_difference
    })

def diff_all_graphs(contracts_to_compare, test_limits):
   for contract in contracts_to_compare:
      for test_limit in test_limits:
        for mode in ['epa', 'states']:
          verisol_graph = f'{verisol_dir}/{contract}_Mode.{mode}'
          graph_file_name = contract[:-5] if 'Fixed' in contract else contract
          echidna_graph = f'{echidna_dir}/{contract}/{test_limit}/{mode}/graph/{graph_file_name}Mode.{mode}'
          diff(verisol_graph, echidna_graph, contract, test_limit, mode)
   

diff_results = []
echidna_dir = 'verisol-test-main/echidna_output'
verisol_dir = 'verisol-test-main/graph'

def main():
  contracts_to_compare = benchmark_contracts
  test_limits = [100, 50_000, 500_000]
  diff_all_graphs(contracts_to_compare, test_limits)
  fileout = open("diff_results.json", "a")
  json.dump(diff_results, fileout)

if __name__ == "__main__":
    main()
