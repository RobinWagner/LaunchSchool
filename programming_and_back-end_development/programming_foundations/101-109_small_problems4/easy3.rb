def digit_list(digits)
  digits.to_s.chars.map { |n| n.to_i }
end

# Test cases
puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
