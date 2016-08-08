def triangle(number)
	number.times { |x| puts "#{" " * (number - (x + 1))}#{ "*" * (x + 1)}" }
end

triangle(9)
