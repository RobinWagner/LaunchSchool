def century(year)
  if year % 100 == 0
    century = year / 100
  else
    century = (year / 100) + 1
  end
  "#{century}#{century_ending(century)}"
end

def century_ending(century)
  if century.to_s.size > 1 && ['11', '12', '13'].include?(century.to_s[-2..-1])
    return 'th'
  end
  if century.to_s[-1] == '1'
    'st'
  elsif century.to_s[-1] == '2'
    'nd'
  elsif century.to_s[-1] == '3'
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
