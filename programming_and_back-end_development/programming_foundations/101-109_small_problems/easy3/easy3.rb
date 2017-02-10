
puts "Please write word or multiple words:"
word = gets.chomp
result = []

letters = word.split('')
letters.each { |letter| result << letter if letter != ' '}

puts "There are #{result.size} characters in \"#{word}\"."

# Alternative solution:

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
