def century(year)
  if year.to_s[-1] == '0'
    if (year / 100).to_s.size > 1
      "#{year / 100}#{ending((year / 100).to_s[-2..-1])}"
    else
      "#{year / 100}#{ending((year / 100).to_s[-1])}"
    end
  else
    if (year / 100).to_s.size > 1
      "#{year / 100 + 1}#{ending((year / 100 + 1).to_s[-2..-1])}"
    else
      "#{year / 100 + 1}#{ending((year / 100 + 1).to_s[-1])}"
    end
  end
end

def ending(year_end)
  case
  when year_end[-1] == '1' && year_end != '11'
    'st'
  when year_end[-1] == '2' && year_end != '12'
    'nd'
  when year_end[-1] == '3' && year_end != '13'
    'rd'
  else
    'th'
  end
end

# Test case
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
