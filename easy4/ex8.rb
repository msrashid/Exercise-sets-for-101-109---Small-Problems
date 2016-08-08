STRING_INTEGER = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, 
									 "7" => 7, "8" => 8, "9" => 9, "0" => 0, "-" => "a"}

def string_to_signed_integer(string)
  number = 0
  new_string = string.split("").map { |digit| STRING_INTEGER[digit] }
  new_string.reverse.each_with_index do |val, index| 
  	number *= -1 if val == "a"
  	next if val == ("-" || nil)
  	number += (10 ** index) * val 
  end
  number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100