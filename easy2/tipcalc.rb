puts "What is the bill?" 
y=gets.chomp.to_f
puts "What is the tip percentage?" 
x=gets.chomp.to_f

puts "The tip is $#{(x*(y/100)).round(1)}"
puts "The total is $#{(x*(y/100)).round(1)+y}"

