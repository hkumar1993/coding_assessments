def second_largest_element(root)
    raise ArgumentError if root.right.nil? && root.left.nil?

    current_node = root
    second = nil
    previous_node = current_node
    while current_node
        display_node("Current", current_node)
        display_node("Previous", previous_node)
        display_node("Second", second)
        display_node("Left", current_node.left)
        display_node("Right", current_node.right)
        puts "~~~~~~~~~~~"
        if current_node.left && !current_node.right
            second = find_max(current_node.left)
        else
            if current_node.right && !current_node.right.right
                second = current_node
            end
        end
        previous_node = current_node
        current_node = current_node.right
    end
    display_node("Current", current_node)
    display_node("Previous", previous_node)
    display_node("Second", second)
    # display_node("Left", current_node.left)
    # display_node("Right", current_node.right)
    puts "~~~~~~~~~~~"
    !!second ? second : previous_node
    
end

def find_max(root)
    return root if root.right.nil?
    find_max(root.right)
end

def display_node(label, node)
    puts "#{label}: #{!!node ? node.value : "NIL"}"
end