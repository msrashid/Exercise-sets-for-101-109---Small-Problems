def center_of(string)
	p middle_number = string.length / 2 + 1
	return p string[middle_number - 1] if string.size.odd?
	p "#{string[middle_number - 2]}#{string[middle_number - 1]}"
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'