require "pry"

def balanced?(string)
	array_of_paranthesis = string.split("").select { |char| char == 
	"(" || char == ")" }
	array_of_paranthesis.each do |char| 
		if char == "("
			next if array_of_paranthesis.index(")") == nil
		  array_of_paranthesis.delete_at(array_of_paranthesis.index(")"))
    else
    	array_of_paranthesis[array_of_paranthesis.index(")")] = nil
	  end
	end
	!array_of_paranthesis.include?(nil) && string.scan("(").size == string.scan(")").size 
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false