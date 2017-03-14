puts '>> Please enter an integer greater than 0:'
integer = gets.chomp.to_i

puts 'Enter \'s\' to compute the sum, \'p\' to compute the product.'
operation = gets.chomp

if operation.downcase == 's'
  total = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and #{integer} is #{total}."
elsif operation.downcase == 'p'
  total = (1..integer).reduce(:*)
  puts "The product of the integers between 1 and #{integer} is #{total}."
else
  puts 'Error. Invalid input!'
end
