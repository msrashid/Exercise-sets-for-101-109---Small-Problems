def is_odd?(variable)
	return false if variable != variable.to_i
  (variable % 2 == 0) ? false : true
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) # => true
