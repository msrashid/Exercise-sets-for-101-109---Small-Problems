def diamonds(number)
  practical_array = []
  (number / 2 + 1).times {|x| practical_array += [(x * 2) + 1]}
  practical_array.each {|x| puts ("*" * x).center(number) }
  practical_array.reverse.each {|x| puts ("*" * x).center(number) unless x == number}
end

diamonds(9)


FURTHER EXPLORATION

def diamonds(number)
  practical_array = []
  (number / 2 + 1).times {|x| practical_array += [(x * 2) + 1]}
  puts "*".center(number)
  practical_array.each {|x| puts ("*#{" " * (x - 2)}*").center(number) unless x == 1}
  practical_array.reverse.each {|x| puts ("*#{" " * (x - 2)}*").center(number) unless x == number || x == 1}
  puts "*".center(number)
end

diamonds(15)

