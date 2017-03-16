DIGITS = (0..9).zip('0123456789'.chars).to_h

require 'pry'

def integer_to_string(integer)
  string_result = ''
  return '0' if integer == 0
  while integer > 0
    string_result += DIGITS[integer % 10]
    integer /= 10
  end
  string_result.reverse
end

# Alternative solution
DIGITS_ARR = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS_ARR[remainder])
    break if number == 0
  end
  result
end

# Test cases
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
