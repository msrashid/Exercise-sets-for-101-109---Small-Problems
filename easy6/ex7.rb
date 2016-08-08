def halvsies(array)
  split_values = array.insert(((array.size.to_f / 2).round), 
  "x").join("").split("x", 2)
  split_values.map { |value| value.split("").map { |string| string.to_i } }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]