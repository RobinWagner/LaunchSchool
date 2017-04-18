def most_common_letter(string)
  hash = {}
  string.chars.each do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  [hash.key(hash.values.max), hash.values.max]
end

# Test cases
p most_common_letter('abca') == ['a', 2]
p most_common_letter('abbab') == ['b', 3]
