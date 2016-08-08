def letter_percentages(string)
	counter_array = [0, 0, 0]
	percentage = {:lowercase => 0, :uppercase => 0, :neither => 0 }
	string.split("").each do |character| 
		if character =~ /[^A-Za-z]/
			counter_array[0] += 1
		elsif character == character.upcase
		  counter_array[1] += 1
		else
			counter_array[2] += 1
		end
  end
  
  percentage[:neither] = (counter_array[0].to_f / counter_array.reduce(:+)) * 100
  percentage[:uppercase] = (counter_array[1].to_f / counter_array.reduce(:+)) * 100
  percentage[:lowercase] = (counter_array[2].to_f / counter_array.reduce(:+)) * 100
  
  p percentage
end
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }