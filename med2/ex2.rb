def block_word?(word)
	array = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  array.each do |test|
	  return false if word.include?(test.split("")[0]) && 
	  word.include?(test.split("")[1])
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false