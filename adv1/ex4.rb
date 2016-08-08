require "pry"
def transpose(array)
  new_matrix = []
  array[0].each { |x| new_matrix += [[]] }
  array.each_with_index do |matrix, index|
    matrix.each_with_index do |val, idx| 
  	  new_matrix[idx][index] = array[index][idx]
  	end
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]