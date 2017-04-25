def prompt(string)
  puts ">> #{string}"
end

prompt("Please enter an integer greater than 0:")
int = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

total = 0

case choice
when 's'
  total = (1..int).reduce(:+)
  puts "The sum of the integers between 1 and #{int} is #{total}."
when 'p'
  total = (1..int).reduce(:*)
  puts "The product of the integers between 1 and #{int} is #{total}."
else
  puts "Invalid input."
end
