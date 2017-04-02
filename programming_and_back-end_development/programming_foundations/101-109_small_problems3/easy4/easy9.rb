INT_STRING = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  result = ''
  str_array = []
  str_array << 0 if int == 0
  while int > 0 do
    str_array << int % 10
    int /= 10
  end
  str_array.map! { |n| INT_STRING[n] }
  str_array.join.reverse
end

# Test cases
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
