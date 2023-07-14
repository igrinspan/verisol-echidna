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
    echidna_node_difference = g2.nodes - g1.nodes  # resta de conjuntos
    echidna_edge_difference = g2.edges - g1.edges  
    verisol_node_difference = g1.nodes - g2.nodes
    verisol_edge_difference = g1.edges - g2.edges
    node_difference = len(g2.nodes) - len(g1.nodes)
    edge_difference = len(g2.edges) - len(g1.edges)
    diff_results.append({
        'Contract': contract,
        'Test Limit': test_limit,
        'Mode': mode,
        'Node Difference': node_difference,
        'Edge Difference': edge_difference,
        'Echidna Node': len(echidna_node_difference),
        'Echidna Edge': len(echidna_edge_difference),
        'Verisol Node': len(verisol_node_difference),
        'Verisol Edge': len(verisol_edge_difference),
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
  fileout = open("diff_results2.json", "a")
  json.dump(diff_results, fileout)

if __name__ == "__main__":
    main()
