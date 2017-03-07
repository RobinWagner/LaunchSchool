def palindromes(string)
  substrings(string).select { |str| str.reverse == str && str.size > 1 }
end

def substrings(string)
  substrings_at_start(string)
end

def substrings_at_start(string)
  substrings = []
  while string.size > 0 do
    for n in 1..string.size do
      substrings << string.slice(0, n)
    end
    string = string.slice(1, string.size)
  end
  substrings
end

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
