def twice(number)
  string = number.to_s.split("")
  middle_number = (number.to_s.length) / 2
  return number * 2 if !(string[0..middle_number - 1] == string[middle_number..-1])
  number
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789

def twice(number)
  divisor = number.to_s.length / 2
  left = (number % 10 ** divisor)
  right = number - left
  left *= 10 ** divisor
  return number if left == right
  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789