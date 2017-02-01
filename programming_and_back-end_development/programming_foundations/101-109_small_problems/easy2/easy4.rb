print 'What is your age? '
current_age = gets.chomp

print 'At what age would you like to retire? '
retirement_age = gets.chomp

current_year = Time.now.year
years_until_retirement = retirement_age.to_i - current_age.to_i
retirement_year = current_year + years_until_retirement

puts ''
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retirement} years of work to go!"
