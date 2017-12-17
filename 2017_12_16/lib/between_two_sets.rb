require 'byebug'

def getTotalX(a,b)
    lcm_A = lcm(a)
    gcf_B = gcf(b)
    total = 0
    (gcf_B / lcm_A).times do |i|
        total += 1 if gcf_B % ((i + 1) * lcm_A) == 0
    end
    total
end

def lcm(arr)
    arr.reduce { |acc, el| acc * el / gcf([acc, el]) }
end

def gcf(arr)
    greatest_factor = arr.min
    while greatest_factor > 1
        return greatest_factor if arr.all? {|el| el % greatest_factor == 0}
        greatest_factor -= 1
    end
    greatest_factor
end