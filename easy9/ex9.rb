def get_grade(test_one, test_two, test_three)
	average = [test_one, test_two, test_three].inject(:+) / 3
	p average
	  if average >= 90 
	  	"A"
	  elsif average >= 80 
	    "B"
	  elsif average >= 70 
	  	"C"
	  elsif average >= 60 
	  	"D"
	  else 
	  	"F"
	  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"