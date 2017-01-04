# Question 1

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Alternative:
indent = "The Flintstones Rock!".length - 1
10.times { puts "The Flintstones Rock!".rjust(indent += 1) }
