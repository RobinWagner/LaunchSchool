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
