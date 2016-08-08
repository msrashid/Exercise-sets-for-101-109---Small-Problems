def staggered_case(string)
	x = -1
  new_string = string.split("").map do |c| 
  	if x.even? && c =~ /[a-zA-Z]/
  		x += 1 
  		c.downcase
  	elsif c =~ /[a-zA-Z]/
  	  x += 1 
  	 	c.upcase
  	else
  		c
  	end
  end
  p new_string.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'