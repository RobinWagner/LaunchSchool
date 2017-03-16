def ascii_value(string)
  return 0 if string.empty?
  string.chars.map { |char| char.ord }.reduce(:+)
end

# Alternative solution
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

# Test cases
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
