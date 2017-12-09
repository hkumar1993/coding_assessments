def max_range_sum(array)

    # Track two max's
    max = nil # => Overall maximum
    current_max = 0 # => current contiguous maximum

    array.each do |el|
        current_max += el # => add to contiguous max
        current_max = 0 if current_max < 0 # => negative contiguous max to 0 if it is negative
        max = current_max if max.nil? || max < current_max # => contiguous max becomes max if it is larger the the overall max
    end

    max

    # TIME COMPLEXITY => O(N), Linear , N being total number of elements in the array
    # SPACE COMPLEXITY => O(1), Constant, as the space used is not dependent on the input
end