def double_consonants(string)
  result = string.chars.map do |n|
    if ('a'..'z').include?(n.downcase) && !(['a', 'e', 'i', 'o', 'u']).include?(n)
      n * 2
    else
      n
    end
  end
  result.join
end

# Alternative solution
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

# Test cases
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
