def interleave(first_array, second_array)
	iterator = 1
	second_array.each do |value|
		first_array = first_array.insert(iterator, value)
		iterator += 2
	end
	p first_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']