require 'set'

class GraphNode
  attr_accessor :label, :neighbors, :color

  def initialize(label)
    @label = label
    @neighbors = Set.new
    @color = nil
  end

  def to_s
    @label  
  end
end

# Representation of how the graph would be initialized
# a = GraphNode.new("a")
# b = GraphNode.new("b")
# c = GraphNode.new("c")

# a.neighbors << b
# b.neighbors << a
# b.neighbors << c
# c.neighbors << b

# graph = [a, b, c]
