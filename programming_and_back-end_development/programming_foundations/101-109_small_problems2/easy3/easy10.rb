def palindromic_number?(integer)
  integer.to_s.reverse == integer.to_s
end

# Alternative solution
def palindromic_number?(number)
  palindrome?(number.to_s)
end

def palindrome?(object)
  object == object.reverse
end

# Test cases
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
