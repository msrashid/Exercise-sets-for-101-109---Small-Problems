def substrings_at_start(string)
  string.split("").map.with_index { |val, index| 
  string.split("")[0..index].join("") }
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']