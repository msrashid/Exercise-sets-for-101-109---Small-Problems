def rotate_rightmost_digits(array, number_of_times)
  number_of_times.times do |k|
    (1..array.size).each do |x|
	  array[-1], array[array.size - 1 - x] = 
	  array[array.size - 1 - x], array[-1]
    end
  end
  array
end

def max_rotation(number)
  array = number.to_s.split("").map(&:to_i)
  placeholder_array = []
  (array.size - 1).times do |x|
    array = rotate_rightmost_digits(array, 1)
    placeholder_array += [array[0]]
    array = array[1..-1]
  end
  (placeholder_array + array).join("").to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845