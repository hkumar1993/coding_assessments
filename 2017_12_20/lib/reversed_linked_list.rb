def reversed_linked_list(head)
    return head if head.next.nil?
    
    prev_link = nil
    current_link = head
    next_link = current_link.next
    
    until next_link.nil?
        current_link.next = prev_link
        prev_link = current_link
        current_link = next_link
        next_link = current_link.next
    end

    current_link.next = prev_link
    prev_link = current_link

    prev_link

end

# nil -> A -> B -> C -> D -> nil
# prev = nil
# current = A
# next = B
# prev = A -> nil
# 