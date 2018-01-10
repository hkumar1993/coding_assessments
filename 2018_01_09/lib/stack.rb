class Stack
    
    def initialize
        @store = []
    end

    def pop
        @store.pop
    end

    def push(val)
        @store << val
    end

    def empty?
        @store.empty?
    end

end