def capitalize_words(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

# Test cases
p capitalize_words("this is a sentence") == "This Is A Sentence"
p capitalize_words("mike bloomfield") == "Mike Bloomfield"
