def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

# Test cases
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
