def find_fibonacci_index_by_length(number)
  fibonacci = [0, 1]
  (number * 15).times {fibonacci << fibonacci[-1] + fibonacci[-2]}
  mystery_value = fibonacci.bsearch { |value| value >= 10**(number - 1) }
  fibonacci.index(mystery_value) 
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847