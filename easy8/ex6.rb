def fizzbuzz(first_number, second_number)
    return_array = (first_number..second_number).to_a.map do |iteration|
  	if iteration % 5 && iteration % 3 == 0
  		"FizzBuzz"
  	elsif iteration % 5 == 0
  	  "Buzz"
  	elsif iteration % 3 == 0
  	  "Fizz"
  	else
  		iteration
  	end
  end
  return_array.join (", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

