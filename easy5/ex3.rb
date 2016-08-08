def after_midnight(time)
  array = time.split(":", 2).map { |number| number.to_i}
  return 0 if array[0] == 24 || time == "00:00"
  array[0] * 60 + array[1] 
end

def before_midnight(time)
	array = time.split(":", 2).map { |number| number.to_i}
  return 0 if array[0] == 24 || time == "00:00"
  1440 - (array[0] * 60 + array[1]) 
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('00:00') == 0
p before_midnight('00:05') == 1435
p after_midnight('12:54') == 774
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0