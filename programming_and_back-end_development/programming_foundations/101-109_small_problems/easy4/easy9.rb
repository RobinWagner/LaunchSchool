# Input: Integer >= 0
# Output: String

INTEGER_STRING = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                   6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(number)
  string = ''
  reversed_string = ''
  return '0' if number == 0
  while number > 0 do
    string += integer_format(number % 10)
    number /= 10
  end
  for n in 1..string.size do
    reversed_string << string[-n]
  end
  reversed_string
end

def integer_format(number)
  INTEGER_STRING[number]
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# Alternative solution:

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8' '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
