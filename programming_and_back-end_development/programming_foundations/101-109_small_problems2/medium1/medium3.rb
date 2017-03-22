def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

def rotate_rightmost_digits(number, n)
  unchanged_part = number.to_s[0, number.to_s.size - n]
  rotated_part = rotate_array(number.to_s.chars[-n, n]).join
  (unchanged_part + rotated_part).to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Test cases
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
