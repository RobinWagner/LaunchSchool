print "What is your name? "
n = gets.chomp

puts n.include?('!') ? "HELLO #{n}. WHY ARE WE SCREAMING?" : "Hello #{n}."
