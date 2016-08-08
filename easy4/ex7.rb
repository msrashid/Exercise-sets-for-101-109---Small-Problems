def string_to_integer(string)
  number = 0
  string_to_integer = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, 
                      "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0 }
  new_string = string.split("").map { |digit| string_to_integer[digit] }
  new_string.reverse.each_with_index { |val, index| number += (10 ** index) * val }
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570