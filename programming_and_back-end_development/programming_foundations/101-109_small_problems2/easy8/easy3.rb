def substrings_at_start(string)
  result = []
  1.upto(string.size) do |n|
    result << string.slice(0, n)
  end
  result
end

# Alternative solution
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# Test cases
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
