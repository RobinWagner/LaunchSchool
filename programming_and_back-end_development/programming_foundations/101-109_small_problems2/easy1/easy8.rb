def average(numbers)
  numbers.inject(:+) / numbers.size
end

# Test cases
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
