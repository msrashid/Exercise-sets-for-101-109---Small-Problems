def show_multiplicative_average(array)
  "The result is #{sprintf("%.3f", array.inject(:*) / array.size.to_f)}"
end

p show_multiplicative_average([3, 5]) == "The result is 7.500"
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == "The result is 28361.667"