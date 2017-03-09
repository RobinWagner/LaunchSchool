def rotate_rightmost_digits(number, digits)
  num_string = number.to_s
  not_rotated = num_string[0, num_string.size - digits]
  rotated = num_string[num_string.size - digits, num_string.size]
  result_string = not_rotated + rotate_array(rotated.split('')).join
  result_string.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Alernative solution:
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# Test cases:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
