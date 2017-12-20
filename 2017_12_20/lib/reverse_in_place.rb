def reverse(str)
    (str.length/2).times do |i|
        str[i], str[str.length-i-1] = str[str.length-i-1], str[i]
    end
    str
end