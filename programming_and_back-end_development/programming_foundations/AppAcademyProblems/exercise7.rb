def palindrome?(string)
  string == string.reverse
end

# Test cases
p palindrome?('abc') == false
p palindrome?('abcba') == true
p palindrome?('z') == true
