require 'pry'

def century(year)
  if year.to_s[-1] == '0' && year.to_s[-2] == '0'
    (year / 100).to_s + ending((year / 100).to_s)
  else
    ((year / 100) + 1).to_s + ending(((year / 100) + 1).to_s)
  end
end

def ending(century)
  if century[-1] == '1' && century[-2, 2] != '11'
    'st'
  elsif century[-1] == '2' && century[-2, 2] != '12'
    'nd'
  elsif century[-1] == '3' && century[-2, 2] != '13'
    'rd'
  else
    'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
