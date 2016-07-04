puts ">> Please enter an integer greater than 0:"
x=gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
y=gets.chomp

j=0
r=1
for i in 1..x
    j=i+j
    r=r*i
end

case y

when "s"
    puts j
when "p"
    puts r
end
