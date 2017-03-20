def palindromes(string)
  substrings(string).select { |s| s == s.reverse && s.size > 1 }
end

def substrings(string)
  result = []
  0.upto(string.size - 1) do |n|
    result << substrings_at_start(string[n..-1])
  end
  result.flatten
end

def substrings_at_start(string)
  result = []
  1.upto(string.size) do |n|
    result << string.slice(0, n)
  end
  result
end

# Alternative solution
def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

# Test cases
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
