arr = []

puts '==> Enter the 1st number:'
n1 = gets.chomp.to_i
arr << n1

puts '==> Enter the 2nd number:'
n2 = gets.chomp.to_i
arr << n2

puts '==> Enter the 3rd number:'
n3 = gets.chomp.to_i
arr << n3

puts '==> Enter the 4th number:'
n4 = gets.chomp.to_i
arr << n4

puts '==> Enter the 5th number:'
n5 = gets.chomp.to_i
arr << n5

puts '==> Enter the last number:'
last = gets.chomp.to_i

puts arr.include?(last) ? "The number #{last} appears in #{arr}."
                        : "The number #{last} does not appear in #{arr}."

# Alternative:

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} appears in #{numbers}."
end
