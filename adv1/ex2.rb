def star(number)
  (1..(number - 3) / 2).to_a.reverse.each_with_index { |x, i|
  puts "*#{" " * x}*#{" " * x}*".center(number)}
  puts "***".center(number)
  puts "*" * number
  puts "***".center(number)
  (1..(number - 3) / 2).to_a.each_with_index { |x, i| 
  puts "*#{" " * x}*#{" " * x}*".center(number)}
end