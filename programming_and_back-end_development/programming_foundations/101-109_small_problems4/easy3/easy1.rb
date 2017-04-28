numbers = []

puts "==> Enter the 1st number: "
num1 = gets.chomp.to_i
numbers << num1

puts "==> Enter 2nd number: "
num2 = gets.chomp.to_i
numbers << num2

puts "==> Enter 3rd number: "
num3 = gets.chomp.to_i
numbers << num3

puts "==> Enter 4th number: "
num4 = gets.chomp.to_i
numbers << num4

puts "==> Enter 5th number: "
num5 = gets.chomp.to_i
numbers << num5

puts "==> Enter the last number: "
last_num = gets.chomp.to_i

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}."
end
