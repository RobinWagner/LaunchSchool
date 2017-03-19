def letter_case_count(string)
  lowercase = 0
  uppercase = 0
  neither = 0
  string.chars.each do |element|
    if ('a'..'z').include?(element)
      lowercase += 1
    elsif ('A'..'Z').include?(element)
      uppercase += 1
    else
      neither += 1
    end
  end
  result = { lowercase: lowercase, uppercase: uppercase, neither: neither }
  result
end

# Test cases
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
