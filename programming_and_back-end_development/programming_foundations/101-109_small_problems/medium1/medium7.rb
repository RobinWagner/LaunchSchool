def word_to_digit(sentence)
  sentence.gsub('one', '1').gsub('two', '2').gsub('three', '3')
          .gsub('four', '4').gsub('five', '5').gsub('six', '6')
          .gsub('seven', '7').gsub('eight', '8').gsub('nine', '9')
end

# Test case:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
