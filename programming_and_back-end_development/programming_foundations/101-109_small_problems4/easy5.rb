def reverse_sentence(string)
  string.split.reverse.join(' ')
end

# Test cases
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
