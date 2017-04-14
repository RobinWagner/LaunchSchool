def rotate_rightmost_digits(number, n)
  num_array = number.to_s.chars
  leading_part = num_array[0,(number.to_s.size - n)].join('')
  rotated_part = rotate_array(num_array[-n..-1]).join('')
  (leading_part + rotated_part).to_i
end

# Alternative solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Test cases
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
