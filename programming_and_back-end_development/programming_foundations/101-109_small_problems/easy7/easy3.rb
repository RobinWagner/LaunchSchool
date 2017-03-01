def word_cap(string)
  string.split(' ').map { |word| word.capitalize }.join(' ')
end

# Alternative solution:

def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

# Alternative solution 2:

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

# Test cases

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
