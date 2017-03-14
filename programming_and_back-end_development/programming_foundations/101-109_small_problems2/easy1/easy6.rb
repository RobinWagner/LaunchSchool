def reverse_words(words)
  words.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

# Test cases:
puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS' 
