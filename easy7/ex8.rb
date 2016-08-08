def multiply_list(array_one, array_two)
  array_one.zip(array_two).map { | x | x[0] * x[1] }
end
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]