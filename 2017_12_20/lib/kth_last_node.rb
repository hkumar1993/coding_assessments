def kth_last_node(k, head)
    nodes = []
    current = head
    until current.nil?
        nodes << current
        current = current.next
    end
    nodes[nodes.length - k]
end