puts "Teddy is #{rand(20..200)} years old!"

# Alternative solution
age = rand(20..200)
puts "Teddy is #{age} years old!"

# Further exploration
def print_age(name)
  age = rand(20..200)
  name.strip.size > 0 ? name : name = "Teddy"
  puts "#{name} is #{age} years old!"
end

print "Enter a name: "
name = gets.chomp

print_age(name)
