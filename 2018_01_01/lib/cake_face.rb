def cake_face(cakes, max_capacity)
  # set up a hash with the maximum values defaulting to 0  
  max_values_at_capacities = Hash.new { { value: 0, cake_set: [] } }

  (0..max_capacity).each do |capacity|
    # set up hash for each value up to the maximum capacity
    current_max_value = 0
    current_max_cake_set = []
    # check max value with each cake
    cakes.each do |cake|
      weight = cake.first
      value = cake.last

      if weight <= capacity
        remaining_cakes = max_values_at_capacities[capacity - weight]
        current_value = value + remaining_cakes[:value]
        current_cake_set = remaining_cakes[:cake_set].dup << cake
        if current_value > current_max_value
          current_max_value = current_value
          current_max_cake_set = current_cake_set
        end
      end

    end
    # write each max value for each capacity
    max_values_at_capacities[capacity] = {value: current_max_value, cake_set: current_max_cake_set}
    
  end

  p max_values_at_capacities
  max_values_at_capacities[max_capacity][:value]

end