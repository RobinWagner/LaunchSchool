def word_to_digit(sentence)
  sentence.gsub('one', '1').gsub('two', '2').gsub('three', '3')
          .gsub('four', '4').gsub('five', '5').gsub('six', '6')
          .gsub('seven', '7').gsub('eight', '8').gsub('nine', '9')
end

# Alternative solution:
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

# Test case:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
