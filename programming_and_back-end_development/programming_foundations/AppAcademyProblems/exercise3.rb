def longest_word(sentence)
  result = ''
  sentence.split.each do |word|
    result = word if word.length > result.length
  end
  result
end

# Test cases
p longest_word('short longest') == 'longest'
p longest_word('one') == 'one'
p longest_word('abc def abcde') == 'abcde'
