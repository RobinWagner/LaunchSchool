puts 'This program counts the character in words for you.'
print 'Please write word or multiple words: '
word = gets.chomp

puts "There are #{word.split.join.size} characters in \"#{word}\""

# Alternative solution
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
