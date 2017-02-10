
puts "Please write word or multiple words:"
word = gets.chomp
result = []

letters = word.split('')
letters.each { |letter| result << letter if letter != ' '}

puts "There are #{result.size} characters in \"#{word}\"."
