def rotate_rightmost_digits(number, last_digits)
  unchanged_part = number.to_s[0, number.to_s.size - last_digits]
  rotated_part = rotate_array(number.to_s.chars[-last_digits..-1]).join
  (unchanged_part + rotated_part).to_i
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
