require 'test/unit'
# require 'solution.rb'
 # require 'matrix'

class RotationTest < Test::Unit::TestCase
  def test_square_rotation
    square = [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0]
    ]

  # for each row, select/grab the next column and make a new row
  # grab the column element and make a new row until all columns have
  # been transferred
  # it would be     0, 0, 0, 0
  # next would be   0, 1, 1, 0
  # next would be   0, 0, 1, 1
  # last would be   0, 0, 0, 0
  # if we reverse the rows, it would be transposing
  # array.transpose.reverse

    square_rotated = [
      [0, 0, 0, 0],
      [0, 1, 1, 0],
      [1, 1, 0, 0],
      [0, 0, 0, 0]
    ]

    assert_equal square_rotated, Matrix.rotate(square)
  end

  def test_rectangular_rotation
    rectangle = [
      [0, 1, 0],
      [1, 1, 1]
    ]

    rectangle_rotated = [
      [0, 1],
      [1, 1],
      [0, 1]
    ]

    assert_equal rectangle_rotated, Matrix.rotate(rectangle)
  end
end

def self.rotate_carlos(matrix)
  row_length = matrix.length
  col_length = matrix.first.length
  new_matrix = []
  (col_length-1).downto(0).each do |col_index|
    new_row = []
    (0..row_length-1).each do |row_index|
      new_row << matrix[row_index][col_index]
    end
    new_matrix << new_row
  end
end

def self.rotate_kevin(matrix)
  row_size = matrix.size
  column_size = matrix[0].size
  rotated = Array.new(column_size) do |c|
    Array.new(row_size) do |r|
      matrix[r][column_size - c - 1]
    end
  end
end


class Matrix
  def self.rotate(matrix)
    matrix.transpose.reverse
  end
end
