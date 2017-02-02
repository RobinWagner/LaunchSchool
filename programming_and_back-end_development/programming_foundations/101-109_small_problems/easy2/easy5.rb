# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# Examples:
# What is your name? Bob
# => Hello Bob.
#
# What is your name? Bob!
# => HELLO BOB. WHY ARE WE SCREAMING?

# Edge case / assumptions:
# Exclamation mark directly follows name (without spaces).
# There is at most one exclamation mark at the end.

# Steps:
## Ask for user's name
## Greet user
## If input == "name!"
### All caps return
### Output "HELLO #{name}. WHY ARE WE SCREAMING?"

# Input: String
# Output: String

# Data structure: String

# Algorithm:
# print question to ask for user's name
# store input provided by user
# if user input has no exlamation mark at end:
## Greet user.
# if user input has exclamation mark at end:
## Greet user in all-caps (remove exclamation mark) and ask question

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
