def swapcase(string)
	string.split("").map { |c| c == c.upcase ? c.downcase : c.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'