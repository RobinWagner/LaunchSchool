statement = "The Flintstones Rock"

hash = {}
statement.gsub(/\s+/, '').split('').each do |char|
  if hash[char].nil?
    hash[char] = 1
  else
    hash[char] += 1
  end
  hash = hash.sort.to_h
end

# Alternative
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
