def century(year)
  return "1st" if year.to_s.length <=2
  year += 100 if year.to_s[-1] != "0"
  year = year.to_s.split("")
  year.pop(2)
  year = year.join("")
  if year[0] == "1" && year[1] != "0"
    "#{year}th"
  elsif year[-1] == "1"
    "#{year}st" 
  elsif year[-1] == "2" 
    "#{year}nd"
  elsif year[-1] == "3"
    "#{year}rd"      
  else
    "#{year}th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'