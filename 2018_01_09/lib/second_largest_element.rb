def second_largest_element(root)
    parent_node = root
    child_node = root.right
    raise ArgumentError if child_node.nil?
    until child_node.right.nil?
        parent_node = child_node
        child_node = child_node.right
    end
    parent_node.value
end

def find_max(root)
    return root.value if root.right.nil?
    find_max(root.right)
end