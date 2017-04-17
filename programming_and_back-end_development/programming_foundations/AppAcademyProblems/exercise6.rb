def count_vowels(string)
  string.count('aeiou')
end

# Test cases
p count_vowels('abcd')    == 1
p count_vowels('color')   == 2
p count_vowels('colour')  == 3
p count_vowels('cecilia') == 4
