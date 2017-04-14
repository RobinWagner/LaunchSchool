WORD_DIGIT = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,
               'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9,
               'ten' => 10 }

def word_to_digit(string)
  result = []
  string.split.each do |word|
    WORD_DIGIT.keys.each { |key| word.gsub!(key, WORD_DIGIT[key].to_s) if word.include?(key) }
    result << word
  end
  result.join(' ')
end

# Test case
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
