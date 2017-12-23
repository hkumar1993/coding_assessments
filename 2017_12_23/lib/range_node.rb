class RangeNode
    
    attr_accessor :left, :right, :range_start, :range_end, :value

    def initialize(value, range_start, range_end)
        @value = value
        @range_start = range_start
        @range_end = range_end
        @left = nil
        @right = nil
    end

end