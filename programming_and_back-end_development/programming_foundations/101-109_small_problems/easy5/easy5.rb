ALPHABET = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
            'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
            'y', 'z']

def cleanup(string)
  result = string.split('').map do |char|
    if ALPHABET.include?(char)
      char = char
    else
      char = ' '
    end
  end
  result.join('').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

# Alternative (regular expressions):

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
