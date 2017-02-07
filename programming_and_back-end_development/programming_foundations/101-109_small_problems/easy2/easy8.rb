# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.

def compute_sum(number)
  (1..number).inject(:+)
end

def compute_product(number)
  (1..number).inject(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
input = gets.chomp

if input == 's'
  total = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{total}."
elsif input == 'p'
  total = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{total}."
else
  puts "Invalid input"
end
