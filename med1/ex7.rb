def word_to_digit(string)
  array_of_numbers = %w(zero one two three four five six seven eight nine ten)
  return_array = string.split.map do |x| 
  	if array_of_numbers.include?(x) 
  	  array_of_numbers.index(x) 
  	elsif array_of_numbers.include?(x.split(".", 2)[0])
  	  "#{array_of_numbers.index(x.split(".", 2)[0])}."
    else
  	  x 
    end
  end
  p return_array.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
