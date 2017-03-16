DIGITS = (0..9).zip('0123456789'.chars).to_h

def signed_integer_to_string(integer)
  return '0' if integer == 0
  integer > 0 ? "+#{integer_to_string(integer)}" : "-#{integer_to_string(integer)}"
end

def integer_to_string(integer)
  string_result = ''
  integer = integer.abs
  return '0' if integer == 0
  while integer > 0
    string_result += DIGITS[integer % 10]
    integer /= 10
  end
  string_result.reverse
end

# Alternative solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

# Test cases
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
