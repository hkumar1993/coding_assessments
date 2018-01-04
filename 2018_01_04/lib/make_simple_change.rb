require 'byebug'


def make_simple_change(denominations, amount)
    sorted_denominations = denominations.sort.reverse
    coins = Hash.new(0)
    amount_left = amount

    sorted_denominations.each do |coin|
        number_of_coins = 0
        until amount_left <= 0
            byebug
            amount_left -= coin
            unless amount_left < 0
                number_of_coins += 1
            else 
                amount_left += coin
            end
        end
        coins[coin] = number_of_coins
    end
    coins
end