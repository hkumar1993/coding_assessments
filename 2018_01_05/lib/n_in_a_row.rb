# Write a method that would find
# if a certain character comes n-times in a row
# either vertically, horizonatally, or diagonally

# INPUT
# n = total number of characters required to be in a row
# input = 2d array

# [
    # ['x','','o'],
    # ['x','o',''],
    # ['x','', '']
# ]

def n_in_a_row(n, input)
    winner = nil
    input.each_with_index do |row, row_id|
        row.each_with_index do |el, col_id|
            winner = el if check_win?(n, el, row_id, col_id, input)
            return winner unless winner.nil?
        end
    end
    winner
end

def check_win?(n, el, row_id, col_id, input)
   vectors = [ [1,0], [0,1], [1,1], [1, -1] ]
   table_width = input.length
   table_height = input.first.length
   consecutive = 0
   win = false
    vectors.each do |vector|
        row_vector, col_vector = vector
        row, col = row_id, col_id
        current_element = input[row][col]
        until consecutive == n || current_element != el
            consecutive += 1
            row += row_vector
            col += col_vector
            break if row >= table_width || col >= table_width
            current_element = input[row][col]
        end
        if consecutive == n
            win = true
            break        
        else
            consecutive = 0
        end
    end
    
    win
end