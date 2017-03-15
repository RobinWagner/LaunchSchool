DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  total = 0
  string.reverse.chars.each_with_index { |char, index| total += STRING_TO_NUM[char] * 10**index }
  total
end

# Alternative solution
def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# Test cases
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
