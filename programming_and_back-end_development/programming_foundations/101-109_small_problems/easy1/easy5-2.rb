def reverse_words(string)
  string.split.map do |words|
    words.size >= 5 ? words.reverse : words
  end.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')

# Alternative solution:

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')
