def rotate_rightmost_digits(number, value)
  array = number.to_s.split("").map(&:to_i)
  (1..value).each do |x|
	array[-1], array[x * -1] = array[x * -1], array[-1]
  end
  p array.join("").to_i
end
  

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915  
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917