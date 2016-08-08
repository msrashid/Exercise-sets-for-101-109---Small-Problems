def crunch(string)
  h = []
  string = string.split("").map { |character| character == h.last ? nil : h << character;
  h }[0].join("")
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''