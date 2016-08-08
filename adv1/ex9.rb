require "pry"

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

def merge_sort(array)
  sub_array = array
  2.times do |x|
  iteration_array = (0..((sub_array.size / 2) - 1)).to_a.map { |x| (x * 2) + 1 }
  return_array = []
  first = 0
  iteration_array.each { |last| return_array += [array[first..last]]; first = last + 1}
  sub_array = return_array
  return_array = []
  end
  p sub_array
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]