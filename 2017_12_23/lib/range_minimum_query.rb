require_relative 'range_node'

def range_minimum_query(arr, range_start, range_end)
    
end

def make_segment_tree(arr, range_start = 0, range_end = arr.length - 1)
    node = RangeNode.new(range_start, range_end)
    
    if range_start ==  range_end
        node.value = arr[range_end]
        return node
    end
    mid = range_start + ((range_end - range_start) / 2)
    node.left = make_segment_tree(arr, range_start, mid)
    node.right = make_segment_tree(arr, mid+1, range_end)
    node.value = find_max_node(node.left, node.right)

    return node
end

def find_max_node(left, right)
    return nil if left.value.nil? && right.value.nil?
    
    return left.value if right.value.nil?

    return right.value if left.value.nil?

    return right.value < left.value ? right.value : left.value
end