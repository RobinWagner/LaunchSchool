def stringy(number)
  result = []
  1.upto(number) do |index|
    index.odd? ? result << '1' : result << '0'
  end
  result.join('')
end

# Alternative solution:
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

# Further Exploration:
def stringy(number, setting=1)
  result = []
  setting == 0 ? first = 0 : first = 1
  setting == 0 ? second = 1 : second = 0
  1.upto(number) do |index|
    index.odd? ? result << first : result << second
  end
  result.join('')
end

# Test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(7, 1) == '1010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
