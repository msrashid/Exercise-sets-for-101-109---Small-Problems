def sum_square_difference(number)
  (1..number).to_a.inject(:+) ** 2  - (1..number).to_a.map{|n|n** 2}.inject(:+)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150