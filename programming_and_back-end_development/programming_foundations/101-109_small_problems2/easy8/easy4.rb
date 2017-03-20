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

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

# Test case
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
