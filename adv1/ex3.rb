def transpose(array)
  new_matrix = [[], [], []]
  array.each_with_index do |matrix, index|
  	matrix.each_with_index { |val, idx| 
  	  new_matrix[index][idx] = array[idx][index] }
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]