ALPHABET = ('a'..'z').to_a

def caesar_cipher(offset, string)
  result = []
  string.chars.each do |n|
    if n == ' '
      result << ' '
    else
      result << ALPHABET[(ALPHABET.index(n) + offset) % ALPHABET.size]
    end
  end
  result.join('')
end

# Test cases
p caesar_cipher(3, 'abc') == 'def'
p caesar_cipher(3, 'abc xyz') == 'def abc'
