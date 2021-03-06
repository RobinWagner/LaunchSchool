def reversed_number(number)
  number.to_s.reverse.to_i
end

# Alternative solution
def reversed_number(number)
  string = number.to_s
  digits = string.chars
  reversed_digits = digits.reverse
  reversed_string = reversed_digits.join('')
  reversed_string.to_i
end

# Further exploration
def reversed_number(number)
  number.to_s.chars.reverse.join.to_i
end

# Test cases
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
