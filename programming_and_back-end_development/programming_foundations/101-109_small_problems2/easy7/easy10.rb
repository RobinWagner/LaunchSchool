def penultimate(words)
  words.split[-2]
end

# Alternative solution
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

# Further exploration
def middle_word(words)
  return '' if words.size == 0
  if words.split.size.odd?
    return words.split[0] if words.size == 1
    return words.split[words.split.size / 2]
  else
    words.split[(words.split.size / 2 - 1)..(words.split.size / 2)].join(' ')
  end
end

# Test cases
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

p middle_word('These are words') == 'are'
p middle_word('') == ''
p middle_word('one') == 'one'
p middle_word('two words') == 'two words'
p middle_word('These are four words') == 'are four'
