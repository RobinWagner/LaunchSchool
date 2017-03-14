print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement = gets.chomp.to_i

current_year = Time.now.year
years_left = retirement - age
retire_year = current_year + years_left

puts ''
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"
