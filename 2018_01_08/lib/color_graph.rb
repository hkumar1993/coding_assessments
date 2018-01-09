require_relative 'graph_node'

# graph is an array of N nodes
# Given an undirected graph with maximum degree D, find a graph coloring using at most D+1 colors. 

# Steps: 1. Find the degree of the graph

def color_graph(graph)
    maximum_degree = 0
    graph.each do |node|
        maximum_degree = node.neighbors.length if node.neighbors.length > maximum_degree
    end
    number_of_colors = maximum_degree + 1
    
    colors = Array.new
    number_of_colors.times { |i| colors << i }

    # Duplicate the graph array so we can mutate it
    graph_duplicate = graph.dup
    
    # Create a queue of nodes 
    node_queue = Array.new
    
    # This ensures if there are any unconnected nodes, they will get colored too
    until graph_duplicate.empty?
        
        node_queue << graph_duplicate.shift

        until node_queue.empty?
            puts "Current node queue = #{node_queue}"
            current_node = node_queue.shift
            next unless current_node.color.nil?

            puts "Setting color for #{current_node}"
            current_node.neighbors.each { |neighbor| node_queue << neighbor if neighbor.color.nil? }
            neighbor_colors = current_node.neighbors.map { |neighbor| neighbor.color unless neighbor.color.nil? }
            
            current_node.color = set_color( colors, neighbor_colors )
            puts "Color set to #{current_node.color}"
        end

    end

    graph
end

def set_color( colors, neighbor_colors )
    current_color = colors.sample
    until neighbor_colors.none? { |color| color == current_color }
        current_color = colors.sample
    end
    current_color
end

# TIME COMPLEXITY 
# O ( N * D )

# SPACE COMPLEXITY 
# O ( N + D + D )

def color_graph_linear(graph)
    maximum_degree = 0
    graph.each do |node|
        maximum_degree = node.neighbors.length if node.neighbors.length > maximum_degree
    end
    number_of_colors = maximum_degree + 1
    
    colors = Array.new
    number_of_colors.times { |i| colors << i }
    
    graph.each do |node|
        puts "Coloring #{node}"
        raise ArgumentError if node.neighbors.include?(node)

        illegal_colors = Set.new

        node.neighbors.each do |neighbor|
            illegal_colors << neighbor.color unless neighbor.color.nil?
        end

        colors.each do |color|
            unless illegal_colors.include?(color)
                node.color = color
                break
            end
        end

    end


end
