require "pry"
def buy_fruit(array)
	return_value = array.map.with_index do |x, ind|
		return_array = []
		(array[ind][1]).times{ |y| return_array += [array[ind][0]] }
		return_array
  end
  return_value.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]