def stringy(number)
	return_string = ""
  number.times do |iteration|
    iteration.even? ?  return_string << "1" : return_string << "0"
  end
  return_string.to_s
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'