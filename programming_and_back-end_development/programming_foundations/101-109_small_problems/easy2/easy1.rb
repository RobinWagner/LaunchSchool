age = Array(20..200).sample
puts "What is your name?"
name = gets.chomp
puts name.size > 0 ? "#{name} is #{age} years old!" : "Teddy is #{age} years old!"

# Alternative

age = rand(20..200)
puts "Teddy is #{age} years old!"
