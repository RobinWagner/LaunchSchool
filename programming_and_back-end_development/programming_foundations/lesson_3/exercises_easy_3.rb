# Question 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 2

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# Alternative:
flintstones.push("Dino")

# Question 3

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino").push("Hoppy")

# Alternatives:
flintstones.concat(%w(Dino Hoppy))
flintstones.insert(-1, "Dino", "Hoppy")

# Question 4

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

# Alternative:
advice.slice!(/Few.*as/)

# Question 5

statement = "The Flintstones Rock!"
statement.scan('t').count

# Alternative:
statement.count('t')

# Question 6

title = "Flintstone Family Members"
title.center(40)
