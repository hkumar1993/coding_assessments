require_relative 'color_graph'

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")
d = GraphNode.new("d")

a.neighbors << b
a.neighbors << c
b.neighbors << a
b.neighbors << c
c.neighbors << b

graph = [d, a, b, c]
graph_1 = graph.dup
graph_2 = graph.dup

color_graph(graph_1)
p graph_1.map {|node| node.color }

color_graph_linear(graph_2)
p graph_2.map {|node| node.color }