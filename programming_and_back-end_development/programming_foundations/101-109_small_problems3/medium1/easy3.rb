def max_rotation(number)
  size = number.to_s.size
  0.upto(size - 1) do |i|
    n = number.to_s[i..-1].size
    number = (number.to_s[0, i] + (rotate_rightmost_digits(number.to_s[i..-1], n)).to_s)
  end
  number.to_i
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join
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

# 735291 => number
# 352917 => number.to_s[0,0] + rotate_rightmost_digits(number.to_s[0..-1], number.to_s[0..-1].size)
# 3 29175 => number.to_s[0,1] + rotate_rightmost_digits(number.to_s[1..-1], number.to_s[1..-1].size)
# 32 1759 => number.to_s[0,2] + rotate_rightmost_digits(number.to_s[2..-1], number.to_s[2..-1].size)
# 321 597 => number.to_s[0,3] + rotate_rightmost_digits(number.to_s[3..-1], number.to_s[3..-1].size)
