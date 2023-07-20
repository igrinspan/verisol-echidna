import filecmp
import os
import graphviz
import pygraphviz as pgv
import json
   


class Graph:
    def __init__(self, graph):
        self.graph = pgv.AGraph(graph)
        self.nodes = self.graph.nodes()
        self.edges = self.get_edges_with_labels()
    
    def get_edges_with_labels(self):
        return set(map(lambda x: (x, x.attr['label']), self.graph.edges()))


def main():
    g7 = Graph('graph_7_trans.dot')
    g5 = Graph('graph_5_trans.dot')
    # print(f'Los nodos de los dos grafos {"SÍ" if (g7.nodes() == g5.nodes()) else "NO"} son iguales')
    # print(f'Los arcos de los dos grafos {"SÍ" if (g7.edges() == g5.edges()) else "NO"} son iguales')
    g7_edges = g7.edges
    g5_edges = g5.edges
    
    print(len(g5_edges) - len(g7_edges))

if __name__ == "__main__":
    main()
