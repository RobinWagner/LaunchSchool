def rotate_array(array)
  new_array = []
  0.upto(array.size-1).each do |idx|
    new_array << array[idx] if idx > 0
  end
  new_array << array[0]
end

def rotate_rightmost_digits(number, n)
  upper_boundary = number.to_s.size-n
  first_part = number.to_s.chars[0,(upper_boundary)].join('')
  second_part = rotate_array(number.to_s.chars[-n..-1]).join('')
  (first_part + second_part).to_i
end

# Test cases
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
