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

# Test case:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
