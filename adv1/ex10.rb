def egyptian(number)
  result_array = []
  iteration = 0
  loop do
  	iteration += 1
  	result_array += [iteration]
  	result_array.pop if result_array.map { |x| 1 / x.to_f }.inject(:+) > number
    break if result_array.map { |x| 1 / x.to_f }.inject(:+) == number
  end
  result_array
end

def unegyptian(array)
  array.map { |x| 1 / x.to_f }.inject(:+)
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))  == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(3, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)