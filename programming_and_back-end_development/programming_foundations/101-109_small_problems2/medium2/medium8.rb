def featured(start)
  max_num = 2_000_000_000
  return "No numbers matching requirements" if start > max_num
  (start + 1).upto(max_num) do |n|
    div_by_7 = n.to_s[0..-2].to_i - n.to_s[-1].to_i * 2
    return n if n.odd? && (div_by_7 % 7 == 0 || div_by_7 == 0) && n.to_s.chars.uniq.size == n.to_s.size
  end
end

# Test cases
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)
