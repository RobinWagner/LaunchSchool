def swapcase(string)
  new_array = string.chars.map do |char|
    if char == char.downcase
      char.upcase
    elsif char == char.upcase
      char.downcase
    end
  end
  new_array.join
end

# Test cases
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
