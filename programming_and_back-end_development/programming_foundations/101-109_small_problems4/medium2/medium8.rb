def featured(number)
  number += 1
  if featured_number?(number)
    number
  else
    number += 1 until number % 7 == 0
    number += 7 until featured_number?(number) || number.to_s.size > 10
  end
  number.to_s.size > 10 ? "There is no possible match" : number
end

def featured_number?(number)
  (number.odd?) && (number % 7 == 0) &&
  (number.to_s.chars.uniq.size == number.to_s.chars.size)
end

# Test cases
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
