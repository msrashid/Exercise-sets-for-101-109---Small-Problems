def friday_13th?(year)
	number_of_times = 0
  (1..12).to_a.each { |month| number_of_times += 1 if Time.new(year, month, 13).friday? }
  number_of_times
end
p friday_13th?(2015) == 3
p friday_13th?(1986) == 1