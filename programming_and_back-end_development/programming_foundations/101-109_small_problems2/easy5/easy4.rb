def swap(words)
  words = words.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(' ')
end

def swap_first_last_character(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_character(word)
  end
  result.join(' ')
end

# Test cases
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
