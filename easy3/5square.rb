puts "Enter the number you want to square:"
y=gets.chomp.to_f
def square (x)
    puts "square(#{x}) == #{(x*x)}"
end

square(y)