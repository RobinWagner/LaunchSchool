NUMBERS = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,
            'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

def word_to_digit(words)
  words.split.map do |word|
    if word_in_numbers?(word.downcase)
      word_match(word.downcase)
    else
      word
    end
  end.join(' ')
end

def word_in_numbers?(word)
  NUMBERS.keys.each do |number_string|
    return true if word.include?(number_string)
  end
  return false
end

def word_match(word)
  result = ''
  NUMBERS.keys.each do |number_string|
    result = word.gsub(number_string, NUMBERS[number_string].to_s) if word.include?(number_string)
  end
  result
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
