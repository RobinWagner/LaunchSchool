result_array = []

def number_ending(num)
  case num
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end

5.times do |num|
  puts "==> Enter the #{num+1}#{number_ending(num+1)} number:"
  number = gets.chomp.to_i
  result_array << number
end

puts "==> Enter the last number:"
final_number = gets.chomp.to_i

puts "The number #{final_number} appears in #{result_array}." if result_array.include?(final_number)
puts "The number #{final_number} does not appear in #{result_array}." unless result_array.include?(final_number)

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
  puts "The number #{last_number} does not appear in #{numbers}."
end
