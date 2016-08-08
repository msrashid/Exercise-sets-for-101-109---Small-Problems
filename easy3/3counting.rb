puts "Please write word or multiple words:"
j=gets.chomp.to_s
r=j
j=j.split("")
j.delete(" ")
x=0
j.each do |i,y| 
x=x+1  
end
puts "There are #{x} characters in '#{r}'." 