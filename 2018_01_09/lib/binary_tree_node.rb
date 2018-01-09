class BinaryTreeNode

    attr_accessor :value
    attr_reader :left, :right

    def initialize(value)
    @value = value
    @left  = nil
    @right = nil
    end

    def insert_left(value)
    @left = BinaryTreeNode.new(value)
    return @left
    end

    def insert_right(value)
    @right = BinaryTreeNode.new(value)
    return @right
    end

end

def build_tree(arr)
    root = BinaryTreeNode.new(arr.first)
    arr[1..-1].each do |el|
        insert_into_tree(el, root)
    end
    root
end

def insert_into_tree(val, root)
    current_node = root
    left = current_node.left
    right = current_node.right

    if val < current_node.value
        insert_node( val, current_node, left, 'left')
    else
        insert_node( val, current_node, right, 'right')
    end 
end

def insert_node(val, current_node, node, direction )
    if node.nil?
        if direction == 'left'
            current_node.insert_left(val)
        else
            current_node.insert_right(val)
        end
    else
        insert_into_tree( val, node ) 
    end
end
