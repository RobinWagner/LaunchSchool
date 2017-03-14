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
