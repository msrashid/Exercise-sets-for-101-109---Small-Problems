def palindromes(string)
  return_string, return_array, string_array = [], [], string.split("")
  loop do
    return_array += string_array.map.with_index { |val, index| 
    string_array[0..index].join("") }
    string_array.shift
    break if string_array.empty?
  end
  return_array.each do |substring|
	  return_string << substring if substring == substring.reverse && substring.size > 1
  end
  p return_string
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]