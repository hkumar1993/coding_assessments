def kth_last_node(k, head)
    length = 0
    current = head
    until current.nil?
        current = current.next
        length += 1
    end
    kth_node = head
    (length - k).times do
        kth_node = kth_node.next
    end
    kth_node
end