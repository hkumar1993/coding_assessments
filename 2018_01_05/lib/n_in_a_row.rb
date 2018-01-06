# Write a method that would find
# if a certain character comes n-times in a row
# either vertically, horizonatally, or diagonally

# INPUT
# n = total number of characters required to be in a row
# input = 2d array

# [
#     ['x','','o'],
#     ['x','o',''],
#     ['x','', '']
# ]

def n_in_a_row(n, input)
    winner = nil
    input.each_with_index do |row, row_id|
        row.each_with_index do |el, col_id|
            winner = el if check_win?(n, el, row_id, col_id)
            return winner unless winner.nil?
        end
    end
    winner
end

def check_win?(n, current_element, row_id, col_id)
   vectors = [ [1,0], [0,1], [1,1], [] ] 
end