print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = 2017
years_of_work = retire_age - age
retire_year = current_year + years_of_work

puts "It's #{current_year}. Your will retire in #{retire_year}."
puts "You have only 40 years of work to go!"
