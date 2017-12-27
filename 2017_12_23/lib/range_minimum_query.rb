require_relative 'range_node'

def range_minimum_query(arr, range_start, range_end)
    root = make_segment_tree(arr)

end

def find_minimum_node(node, range_start, range_end)
    
end

def range_overlap?(node_range, query_range)
    # Total Overlap => 1
    # Partial Overlap => 0
    # No Overlap => -1

    if node_range.include?(query_range.first) || node_range.include?(query_range.last)
        if query_range.include?(node_range.first) && query_range.include?(node_range.last)
            return 1
        else
            return 0
        end
    else
        return -1
    end
end