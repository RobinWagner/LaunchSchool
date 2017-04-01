def century(year)
  if year % 100 == 0
    result = year / 100
  else
    result = (year / 100) + 1
  end
  "#{result}#{century_ending(result)}"
end

def century_ending(result)
  if result.to_s.size > 1
    compare = result.to_s[-2..-1]
  else
    compare = result.to_s[-1]
  end
  case
  when compare == '11' || compare == '12' || compare == '13'
    'th'
  when compare[-1] == '1'
    'st'
  when compare[-1] == '2'
    'nd'
  when compare[-1] == '3'
    'rd'
  else
    'th'
  end
end

# Test cases
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
