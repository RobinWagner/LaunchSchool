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

# Test case
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
