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

# Alternative solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

# Test cases
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
