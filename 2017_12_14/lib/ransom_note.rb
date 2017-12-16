require 'byebug'

def ransom_note(magazine, ransom)
    return false if magazine.length < ransom.length
    ransom_chars = Hash.new(0)
    magazine_chars = Hash.new(0)

    magazine.chars.each do |c|
        magazine_chars[c] += 1
    end

    ransom.chars.each do |c|
        ransom_chars[c] += 1
    end

    byebug

    magazine.chars.each do |c|
        ransom_chars[c] -= 1
    end
    #p ransom_chars.values.all? {|val| val <= 0 }
    ransom_chars.values.all? {|val| val <= 0 }
    
end