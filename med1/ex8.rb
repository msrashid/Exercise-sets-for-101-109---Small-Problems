def fibonacci(n)
  return 1 if n == 1
  return_array = [0, 1]
  n.times { |x| return_array << return_array[x] + return_array[x + 1]}
  return_array[-4] + fibonacci(n - 1)
end
