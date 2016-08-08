require "pry"
def triangle(num1, num2, num3)
	array_of_angles = [num1, num2, num3]
  return :invalid if array_of_angles.inject(:+) < 180 || 
    array_of_angles.include?(0)
  if array_of_angles.include?(90)
  	:right 
  elsif array_of_angles.select{ |x| x < 90 }.size == 3
    :acute 
  else
  	:obtuse 
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid