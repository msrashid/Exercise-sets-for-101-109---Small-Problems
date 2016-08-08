require "pry"
def word_sizes(sentence)
	h = {}
  sentence.split.map do|word_with_nonletters|  
    word = word_with_nonletters.split("").select { |x| x =~ /[A-Za-z]/}.join("")
    h[word.length] ? h[word.length] += 1 : h[word.length] = 1
  end
  h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}