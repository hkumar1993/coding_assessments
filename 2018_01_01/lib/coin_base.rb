require 'byebug'

def coin_base(value, denominations)
    return nil if denominations.empty?
    return [] if value == 0
    combinations = []
    denominations.each do |coin|
        remaining = value - coin
        if remaining == 0
            combinations << [coin]
        elsif remaining < 0
            next
        else
            remaining_combinations = coin_base(remaining, denominations)
            remaining_combinations.map! { |combo| combo << coin }
            combinations.concat( remaining_combinations )
        end
        
    end
    combinations
end