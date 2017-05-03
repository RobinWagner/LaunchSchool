require 'pry'

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

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

# Test cases
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
