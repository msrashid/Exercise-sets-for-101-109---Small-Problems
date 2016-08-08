require "pry"
def letter_case_count(string)
	hash_counter = { :lowercase => 0, :uppercase => 0, :neither => 0}
	string.split("").each do |letter|
	  if !(letter =~ /[A-Za-z]/)
      hash_counter[:neither] += 1 
    elsif letter == letter.upcase
      hash_counter[:uppercase] += 1 
    else
    	hash_counter[:lowercase] += 1 
	  end
	end
	p hash_counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }