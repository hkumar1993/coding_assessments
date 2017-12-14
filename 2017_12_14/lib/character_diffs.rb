def character_diffs(a,b)

    longer = a.length > b.length ? a : b
    shorter = a.length > b.length ? b : a

    longer_chars = Hash.new(0)
    shorter_chars = Hash.new(0)

    longer.chars.each do |c|
        longer_chars[c] += 1
    end
    
    shorter.chars.each do |c|
        byebug if longer_chars.values.any? { |val| val.nil? } || shorter_chars.values.any? { |val| val.nil? }
        if longer_chars[c] && longer_chars[c]!=0
            longer_chars[c] -= 1
        else
            shorter_chars[c] += 1
        end
    end

    (longer_chars.values.reduce(:+) || 0 ) + (shorter_chars.values.reduce(:+) || 0)

end