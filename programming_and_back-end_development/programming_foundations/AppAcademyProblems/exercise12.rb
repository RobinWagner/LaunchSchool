def most_common_letter(string)
  hash = {}
  string.chars.each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end
  most_common_occurence_letter = hash.values.max
  [hash.key(most_common_occurence_letter), most_common_occurence_letter]
end

# Test cases
p most_common_letter('abca') == ['a', 2]
p most_common_letter('abbab') == ['b', 3]
