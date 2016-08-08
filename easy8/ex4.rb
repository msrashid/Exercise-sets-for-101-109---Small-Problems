def substrings(string)
  return_array = []
  string_array = string.split("")
  loop do
    return_array += string_array.map.with_index { |val, index| 
    string_array[0..index].join("") }
    string_array.shift
    break if string_array.empty?
  end
  return_array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]