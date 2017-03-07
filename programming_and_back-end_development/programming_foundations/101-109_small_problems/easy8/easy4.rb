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



# Alternative solution:
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# Test case:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
