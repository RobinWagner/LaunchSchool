def is_odd?(int)
  int % 2 != 0
end

# Test cases
puts is_odd?(2)   == false
puts is_odd?(5)   == true
puts is_odd?(-17) == true
puts is_odd?(-8)  == false
