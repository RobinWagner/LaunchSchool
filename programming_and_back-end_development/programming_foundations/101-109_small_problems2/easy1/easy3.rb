def digit_list(number)
  number.to_s.chars.map { |num| num.to_i }
end

# Alternative solution 1:
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

# Idiomatic ruby solution:
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# Test cases:
puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
