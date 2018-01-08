require_relative 'color_graph'

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")
d = GraphNode.new("c")

a.neighbors << b
a.neighbors << c
b.neighbors << a
b.neighbors << c
c.neighbors << b

graph = [d, a, b, c]

color_graph(graph)

p graph.map {|node| node.color }