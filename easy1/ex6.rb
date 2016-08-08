def reverse_words(reverse_string)
	words = reverse_string.split.map do |word|
		word.length >= 5 ? word.reverse : word
	end
	words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcStouchex6.rb