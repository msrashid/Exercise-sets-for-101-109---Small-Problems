
array = []
1..1000.times { |x| array[x] = 1}
def switch_round(array)
	
	1..1000.times do |x|
		(x - 1) % 2 == 0 && array[x] == 0 ? array[x] == 1 : array[x] == 0
		(x - 1) % 3 == 0 && array[x] == 0 ? array[x] == 1 : array[x] == 0
	end
end

array = switch_round(array)