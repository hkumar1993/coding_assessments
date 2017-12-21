def space_edition(arr)
    min = 1
    max = arr.length - 1

    while min < max
        mid = min + (( max - min ) / 2)
        
        items_in_lower_range = 0
        possible_items = mid - min + 1

        arr.each do |el|
            items_in_lower_range += 1 if el >= min && el <= mid
        end

        if items_in_lower_range > possible_items
            min = min
            max = mid
        else
            min = mid + 1
            max = max
        end
    end

    min
end