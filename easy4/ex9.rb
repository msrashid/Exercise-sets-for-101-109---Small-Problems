require "pry"
STRING_INTEGER = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, 
									 "7" => 7, "8" => 8, "9" => 9, "0" => 0, "-" => "a"}

def integer_to_string(integer)
	string = []
	return "0" if integer == 0
	size = 0
	boolean = false
	while !boolean
	  factor = 10
	  decimal_point = integer / (factor ** size)
    boolean = decimal_point < 10
    size += 1
	end
	size.times do |x| 
		new_integer = 0
		new_integer =  (integer / (10 ** (size - x - 1)))
		string += [STRING_INTEGER.key(new_integer)]
		integer = (integer - (new_integer * (10 ** (size - x - 1))))
	end
  string.join("")
end

p integer_to_string(4321) == '+4321'
p integer_to_string(0) == '0'
p integer_to_string(-321) == '-321'
