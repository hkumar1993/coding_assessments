BASES = ['', 'Thousand', 'Million', 'Billion']


def text_dollar(num)
    text_num = subdivide_hundreds(num) # => Subdivide the number into hundreds for easier translations
    text_num = text_num.map {|sub_hundred| translate_hundred(sub_hundred) } # => Translates each hundred
    text_num = text_num.each_with_index.map { |word, idx| "#{word}#{BASES[idx]}"} # => Adds Base to each element
    text_num = text_num.reverse.join('') # => Creates text number
    "#{text_num}Dollars" # => Returns final dollar value
end

# Subdividing number into hundreds
# Example: 123456 => [456, 123]

def subdivide_hundreds(num)
    hundreds = Array.new
    until num == 0
        hundreds << num % 1000
        num /= 1000
    end
    hundreds
end

# Subdivides hundred value to its respective digits
# Translates each digit, and combines to create hundred number

def translate_hundred(num)
    digits = Array.new
    until num == 0
        digits << num % 10
        num /= 10
    end
    hundreds = digits[2].nil? || digits[2] == 0 ? nil : digits[2]
    tens = digits[1].nil? || digits[1] == 0 ? nil : digits[1]
    ones = digits[0].nil? || digits[0] == 0 ? nil : digits[0]

    if tens == 1
        tens = tens*10
        tens += ones if ones # => To prevent error if ones is already nil
        ones = nil # => Prevents translation of ones again
    end
    
    hundreds = "#{translate_digit(hundreds)}Hundred" if hundreds
    tens = "#{translate_tens(tens)}" if tens
    ones = "#{translate_digit(ones)}" if ones

    "#{hundreds if hundreds}#{tens if tens}#{ones if ones}"

end

# => Simple translation to word

def translate_digit(num)
    case num
    when 1
        "One"
    when 2
        "Two"
    when 3
        "Three"
    when 4
        "Four"
    when 5
        "Five"
    when 6
        "Six"
    when 7
        "Seven"
    when 8
        "Eight"
    when 9
        "Nine"
    end
end

# => Translates the tens digits
# => If the tens value ranges between 10..19, it is converted here

def translate_tens(num)
    if num >= 10
        if (16..19).include?(num)
            "#{translate_digit(num/10)}teen"
        else
            case num
            when 10
                "Ten"
            when 11
                "Eleven"
            when 12
                "Twelve"
            when 13
                "Thirteen"
            when 14
                "Fourteen"
            when 15
                "Fifteen"
            end
        end
    else
        case num
        when 2
            "Twenty"
        when 3
            "Thirty"
        when 4
            "Forty"
        when 5
            "Fifty"
        when 6
            "Sixty"
        when 7
            "Seventy"
        when 8
            "Eighty"
        when 9
            "Ninety"
        end
    end
end
