def include?(array, search_value)
  array.each { |element| return true if element == search_value }
  false
end

# Alternative solution:

def include?(array, value)
  !!array.find_index(value)
end

# Test cases:

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
