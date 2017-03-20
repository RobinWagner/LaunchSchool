def show_multiplicative_average(array)
  result = array.map.inject(&:*) / array.size.to_f
  puts "The result is #{format("%.3f", result)}"
end

# Alternative solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts format('%.3f', average)
end

# Test cases
show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
