def stringy(number)
  str = ''
  number.times { |n| n.even? ? str << '1' : str << '0' }
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
