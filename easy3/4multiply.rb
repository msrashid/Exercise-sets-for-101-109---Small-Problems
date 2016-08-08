puts "Enter the first number:"
i=gets.chomp.to_f.round(2)
puts "Enter the second number:"
j=gets.chomp.to_f.round(2)

def multiply (x, y)
   puts "multiply(#{x}, #{y}) == #{(x*y).round(2)}"
end

multiply(i, j)