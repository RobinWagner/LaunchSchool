print 'What is your name? '
n = gets.chomp

puts n.include?('!') ? "HELLO #{n}. WHY ARE WE SCREAMING?" : "Hello #{n}."

# Alternative solution
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
