require_relative 'stack'

class Queue
    
    def initialize
        @inward_stack = Stack.new
        @outward_stack = Stack.new
    end

    def enqueue(val)
        @inward_stack.push(val)
    end

    def dequeue
        if @outward_stack.empty?
            until @inward_stack.empty?
                @outward_stack.push(@inward_stack.pop)                
            end
        end
        @outward_stack.pop
    end

end