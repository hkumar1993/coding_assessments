require 'byebug'
require 'set'
# MEMOIZATION

class Coin

    attr_accessor :coin_combos

    def initialize
        @coin_combos = Hash.new {Array.new} 
    end

    def coin_base_memo( value, denominations, prev_value = nil )
        return nil if denominations.empty?
        return [] if value == 0
        p "Checking how to make #{value} with previous value of #{prev_value}"
        combinations = []
        denominations.each do |coin|
            next if prev_value && @coin_combos[value].include?(prev_value)
            remaining = value - coin
            if remaining == 0
                combinations << [coin]
            elsif remaining < 0
                next
            else
                remaining_combinations = coin_base_memo(remaining, denominations, coin)
                remaining_combinations.map! { |combo| combo << coin }
                combinations.concat( remaining_combinations )
            end
            
        end
        @coin_combos[value] << prev_value unless prev_value.nil?
        p combinations
        combinations
    end
end

# RECURSIVE
def coin_base_recursive(value, denominations)
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
            remaining_combinations = coin_base_recursive(remaining, denominations)
            remaining_combinations.map! { |combo| combo << coin }
            combinations.concat( remaining_combinations )
        end
        
    end
    p combinations
    combinations
end

def coin_base( value, denominations, current_index = 0 )
    return [] if value <= 0 || current_index >= denominations.length
    p "Checking how to make #{value} with #{denominations[current_index..-1]}"
    combinations = []
    amount_left = value
    coin_set = []
    current_coin = denominations[current_index]
    while amount_left >= 0
        # byebug
        if amount_left == 0
            combinations << coin_set 
        else
            remaining_combinations = coin_base(amount_left, denominations, current_index + 1)
            remaining_combinations = remaining_combinations.map { |combo| combo.concat(coin_set) }
            combinations.concat(remaining_combinations)
            coin_set << current_coin
        end
        amount_left -= current_coin
    end
    combinations
end