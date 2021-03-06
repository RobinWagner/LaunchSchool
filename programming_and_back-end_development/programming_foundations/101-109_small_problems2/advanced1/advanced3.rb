def transpose(matrix)
  new_matrix = []
  0.upto(2) do |i|
    new_matrix << [matrix[0][i], matrix[1][i], matrix[2][i]]
  end
  new_matrix
end

# Alternative solution
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

# Further exploration
def transpose!(matrix)
  matrix.each_with_index do |row, i|
    i.times do |index|
      row[index], matrix[index][i] = matrix[index][i], row[index]
    end
  end
end

# Test cases
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
