def swapcase(string)
  string.split('').map do |char|
    char == char.downcase ? char.upcase : char.downcase
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
