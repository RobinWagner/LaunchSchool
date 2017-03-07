def substrings_at_start(string)
  substrings = []
  for n in 1..string.size do
    substrings << string.slice(0, n)
  end
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
