def bubble_sort!(array)
  (array.size - 1).times do 
    (array.size - 1).times do |x|
	  array[x + 1], array[x] = array[x], array[x + 1] if array[x] >= array[x + 1]
    end
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)