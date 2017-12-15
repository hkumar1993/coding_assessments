def ransom_note(magazine, ransom)
    return false if magazine.length < ransom.length
    ransom_chars = Hash.new(0)
    ransom.chars.each do |c|
        ransom_chars[c] += 1
    end
    magazine.chars.each do |c|
        ransom_chars[c] -= 1
    end
    #p ransom_chars.values.all? {|val| val <= 0 }
    ransom_chars.values.all? {|val| val <= 0 }
    
end