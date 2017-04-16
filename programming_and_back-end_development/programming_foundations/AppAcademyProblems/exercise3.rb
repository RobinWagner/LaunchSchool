def longest_word(sentence)
  result = ''
  sentence.split.each do |word|
    result = word if word.length > result.length
  end
  result
end

# Alternative solution
def longest_word(sentence)
  sentence.split.sort_by { |word| word.size }[-1]
end

# Test cases
p longest_word('short longest') == 'longest'
p longest_word('one') == 'one'
p longest_word('abc def abcde') == 'abcde'
