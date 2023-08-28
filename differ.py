# Este script es para comparar los grafos de verisol con los de echidna.
# Están hardcodeados nombres de los contratos y las carpetas donde buscar sus grafos.
# Devuelve un JSON con los diff results que luego puede ser analizado con el notebook
# que está en diffs.

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

class Graph:
    def __init__(self, graph):
        self.graph = pgv.AGraph(graph)
        self.nodes = set(self.graph.nodes())
        self.edges = self.get_edges_with_labels()
    
    def get_edges_with_labels(self):
        return set(map(lambda x: (x, x.attr['label']), self.graph.edges()))


def diff(verisol_graph, echidna_graph, contract, test_limit, mode):
    g1 = Graph(verisol_graph)
    g2 = Graph(echidna_graph)
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
  test_limits = [500, 50_000, 500_000]
  diff_all_graphs(contracts_to_compare, test_limits)
  fileout = open("diff_results.json", "a")
  json.dump(diff_results, fileout)

if __name__ == "__main__":
    main()
