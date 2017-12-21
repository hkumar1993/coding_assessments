def beast_edition(arr)
    n = arr.length - 1
    head = arr.last
    current_node = head
    
    n.times do
        current_node = arr[current_node]
    end

    cycle_head = current_node
    current_node = arr[current_node]
    cycle_length = 1
    
    until cycle_head == current_node
        current_node = arr[current_node]
        cycle_length += 1
    end

    pointer_head = head
    pointer_tail = head

    cycle_length.times do 
        pointer_tail = arr[pointer_tail]
    end

    until pointer_head == pointer_tail
        pointer_head = arr[pointer_head]
        pointer_tail = arr[pointer_tail]
    end

    pointer_head

end