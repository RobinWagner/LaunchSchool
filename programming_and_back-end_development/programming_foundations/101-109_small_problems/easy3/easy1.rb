result_array = []

puts "==> Enter the 1st number:"
number1 = gets.chomp.to_i
result_array << number1

puts "==> Enter the 2nd number:"
number2 = gets.chomp.to_i
result_array << number2

puts "==> Enter the 3rd number:"
number3 = gets.chomp.to_i
result_array << number3

puts "==> Enter the 4th number:"
number4 = gets.chomp.to_i
result_array << number4

puts "==> Enter the 5th number:"
number5 = gets.chomp.to_i
result_array << number5

puts "==> Enter the last number:"
final_number = gets.chomp.to_i

puts "The number #{final_number} appears in #{result_array}." if result_array.include?(final_number)
puts "The number #{final_number} does not appear in #{result_array}." unless result_array.include?(final_number)
