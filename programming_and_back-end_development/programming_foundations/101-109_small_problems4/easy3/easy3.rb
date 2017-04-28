print "Please write word or multiple words: "
words = gets.chomp

def number_of_characters(words)
  words.gsub(' ', '').size
end

puts "There are #{number_of_characters(words)} characters in \"#{words}\"."
