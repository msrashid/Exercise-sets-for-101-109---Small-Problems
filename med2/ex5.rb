require "pry"
def triangle(num1, num2, num3)
  array_of_sides = [num1, num2, num3]
  triangle_check = array_of_sides.product(array_of_sides, array_of_sides).uniq
  triangle_check.each { |sides| return p :invalid if 
    sides[0..1].inject(:+) <= sides[2] && array_of_sides.count(sides[0]) > 1}
  if array_of_sides.uniq.size == 2
  	:isosceles
  elsif array_of_sides.uniq.size == 3
    :scalene
  else
  	:equilateral
  end
end


p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 3, 3) == :equilateral
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid