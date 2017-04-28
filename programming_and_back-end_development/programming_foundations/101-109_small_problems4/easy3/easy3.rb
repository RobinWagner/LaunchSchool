print "Please write word or multiple words: "
words = gets.chomp

def number_of_characters(words)
  words.gsub(' ', '').size
end

puts "There are #{number_of_characters(words)} characters in \"#{words}\"."

# Alternative solution
print 'Please write word or multiple words: '
inputs = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
