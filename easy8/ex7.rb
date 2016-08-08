def repeater(string)
	string.split("").map { |char| "#{char}#{char}" }.join("")
end
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''