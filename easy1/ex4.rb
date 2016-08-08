def count_occurrences(array)
  hash = {}
  array.each do |vehicle|
    hash[vehicle] = 0 if hash[vehicle] == nil
    hash[vehicle] += 1
  end
  hash.each {|key, value| puts "#{key} => #{value}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
