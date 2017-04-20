def stringy(num)
  result = ''
  num.times { |n| n.even? ? result += '1' : result += '0' }
  result
end

# Test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
