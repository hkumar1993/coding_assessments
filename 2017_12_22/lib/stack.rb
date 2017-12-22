class Stack
    include Enumerable

    attr_accessor :store

    def initialize(arr = [])
        @store = arr
    end

    def push(val)
        @store.unshift(val)
    end

    def pop
        @store.shift
    end

end