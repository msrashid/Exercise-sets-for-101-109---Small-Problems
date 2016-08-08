def multiply_all_pairs(array_one, array_two)
  array_one.product(array_two).uniq.map { | x | x.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
