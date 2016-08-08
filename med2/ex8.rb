def featured(number)
	if number >= 9_876_543_210
		puts 'There is no possible number that fulfills those requirements.'
		return
	end
  array = []
  iteration = 0
  loop do
    iteration += 1
    next if (iteration * 7).even? || (iteration * 7).to_s.split("") !=  
    (iteration * 7).to_s.split("").uniq
    array += [iteration * 7] 
    break if array[-1] > number
  end
  array[-1]
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)