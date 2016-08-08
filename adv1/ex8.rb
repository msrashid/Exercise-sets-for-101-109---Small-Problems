def merge (first_array, second_array)
  return first_array if second_array.first == nil 
  return second_array if first_array.first == nil 
  merged_array = first_array + second_array
  returned_merged_array = []
  loop do
    returned_merged_array += [merged_array.min]
    merged_array.delete_at(merged_array.index(merged_array.min))
    break if returned_merged_array.size == (first_array + second_array).size
  end
  returned_merged_array
end