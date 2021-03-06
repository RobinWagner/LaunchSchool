def is_odd?(integer)
  integer % 2 != 0
end

# Alternative solution:
def is_odd?(number)
  number % 2 == 1
end

# Alternative solution 2:
def is_odd?(number)
  number.remainder(2) != 0
end

# Test cases:
puts is_odd?(2) == false    # => false
puts is_odd?(5) == true   # => true
puts is_odd?(-17) == true  # => true
puts is_odd?(-8) == false  # => false
