def double_consonants(string)
	string.split("").map { |char| ("aeiouAEIOU").match(char) || 
	char =~ /[^A-Za-z]/ ? char : char * 2}.join("")
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""