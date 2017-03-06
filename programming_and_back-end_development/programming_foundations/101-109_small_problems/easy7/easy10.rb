def penultimate(words)
  words.split(' ')[-2]
end

# Alternative solution:
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

# Test cases:
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
