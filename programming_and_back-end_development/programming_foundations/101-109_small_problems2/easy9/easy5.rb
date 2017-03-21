def uppercase?(string)
  string.chars.each { |char| return false if char.upcase != char }
  true
end

# Alternative solution
def uppercase?(string)
  string == string.upcase
end

# Test cases
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
