require_relative 'range_node'

def range_minimum_query(arr, range_start, range_end)
    root = make_segment_tree(arr)
    find_minimum_node( root, range_start, range_end )
end

def find_minimum_node(node, range_start, range_end)
    overlap = range_overlap?((node.range_start..node.range_end),(range_start..range_end))
    case overlap
    when 1
        return node.value
    when 0
        left = find_minimum_node( node.left, range_start, range_end )
        right = find_minimum_node( node.right, range_start, range_end )
        return minimum_value( left, right )
    when -1
        return nil
    end
end

def minimum_value(a,b)
    return a if b.nil?
    return b if a.nil?
    return a < b ? a : b
end

def range_overlap?(node_range, query_range)
    # Total Overlap => 1
    # Partial Overlap => 0
    # No Overlap => -1

    if query_range.include?(node_range.first) && query_range.include?(node_range.last)
        return 1
    elsif node_range.include?(query_range.first) || node_range.include?(query_range.last)
        return 0
    else
        return -1
    end
end