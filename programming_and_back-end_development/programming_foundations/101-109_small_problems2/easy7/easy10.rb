def penultimate(words)
  words.split[-2]
end

# Test cases
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
