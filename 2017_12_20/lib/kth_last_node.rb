def kth_last_node(k, head)
    start_node = head
    end_node = head
    k.times do 
        end_node = end_node.next
    end
    until end_node.nil?
        start_node = start_node.next
        end_node = end_node.next
    end
    start_node
end