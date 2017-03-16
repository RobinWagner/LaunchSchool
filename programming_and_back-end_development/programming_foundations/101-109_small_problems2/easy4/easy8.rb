DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
  total = 0
  string.reverse.chars.each_with_index do |char, index|
    total += DIGITS[char] * 10**index
  end
  total
end

def string_to_signed_integer(string)
  if string[0] == '-'
    -1 * string_to_integer(string[1..-1])
  elsif string[0] == '+'
    string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

# Test cases
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
