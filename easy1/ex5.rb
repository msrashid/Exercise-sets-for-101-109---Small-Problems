def reverse_sentence(reverse_string)
	new_sentence = ""
	string = []
  reverse_string.split(" ").each { |word| string.unshift(word) }
  string.each do |word| 
  	new_sentence += "#{word}"
  	new_sentence += " " if word != string.last
  end
  new_sentence
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'