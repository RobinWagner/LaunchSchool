def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

# Test cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
