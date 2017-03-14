puts 'This program counts the character in words for you.'
print 'Please write word or multiple words: '
word = gets.chomp

puts "There are #{word.split.join.size} characters in \"#{word}\""
