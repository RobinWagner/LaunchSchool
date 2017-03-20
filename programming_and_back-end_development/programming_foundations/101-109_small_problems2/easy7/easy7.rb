def show_multiplicative_average(array)
  result = array.map.inject(&:*) / array.size.to_f
  puts "The result is #{format("%.3f", result)}"
end

# Test cases
show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
