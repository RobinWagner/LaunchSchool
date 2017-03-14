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

# Test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
