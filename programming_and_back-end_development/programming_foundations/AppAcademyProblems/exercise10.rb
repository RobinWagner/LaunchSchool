def is_power_of_two?(num)
  (0..num).each do |n|
    return true if 2**n == num
  end
  false
end

# Test cases
p is_power_of_two?(1) == true
p is_power_of_two?(16) == true
p is_power_of_two?(64) == true
p is_power_of_two?(78) == false
p is_power_of_two?(0) == false
