require "pry"
VOWELS = %(A, E, I, O, U)
def remove_vowels(string)
  new_string = []
  string.join(" ").split(" ").each do |word| 
  	new_string << word.split("").select { |char| !VOWELS.include?(char.upcase) 
  	}.join("")
  end
  new_string
end
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']