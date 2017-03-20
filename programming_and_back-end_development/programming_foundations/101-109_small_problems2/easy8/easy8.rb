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

# Test cases
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
