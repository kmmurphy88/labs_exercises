# display a matrix of 10 x 10
# insert random elements into the Matrix (any single digit) and display it
# Ask if user wants a new random matrix and display if user said yes
# generate a matrix of max (30) x max (100), based on user input
# with values only being " " and 0
# Test if cells are alive or dead (" " is dead and 0 is alive)
# Apply the rules of Conway's game of life - Part 1
#   Count living cells surrounding each element
# Apply Conway's game of life rule 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#
# Rules:
#  - Any live cell with less than two live neighbors dies, as if caused by underpopulation
#  - Any live cell with two or three live neighbors, lives on to the next generation
#  - Any live cell with more than three live neighbors dies, as if by overcrowding
#  - Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction

def new_matrix(row_dimension, column_dimension)
  Array.new(row_dimension) do
    Array.new(column_dimension) do
      @cell = [' ', 'X'].sample
    end
  end
end

puts "Would you like to play the Game of Life?"
puts "Please answer 'yes' or 'no'."

answer = gets.chomp.downcase

if answer == "yes"
    puts "which row dimensions would you like to enter?"
    new_row_dimension = gets.chomp.to_i
    if  new_row_dimension > 30
        new_row_dimension = 30
    end
    puts "which column dimensions would you like to enter?"
    new_column_dimension = gets.chomp.to_i
    if  new_column_dimension > 100
        new_column_dimension = 100
    end
  puts new_matrix(new_row_dimension, new_column_dimension).inspect
  elsif answer == "no"
    puts "Go Fuck Yourself!"
    exit
  else
    puts "Not a valid input"
    exit
end




# def alive_neighbors(x, y)
#   @neighbors.inject(0) do |sum, (neighbor_x, neighbor_y)|
#     sum += 1 if @cells[y + neighbor_y][x + neighbor_x].alive; sum
#   end
