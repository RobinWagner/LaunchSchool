puts "==> Enter the first number:"
number1 = gets.chomp.to_i

puts "==> Enter the second number:"
number2 = gets.chomp.to_i

puts "==> #{number1} + #{number2} = #{number1 + number2}"
puts "==> #{number1} + #{number2} = #{number1 - number2}"
puts "==> #{number1} * #{number2} = #{number1 * number2}"
if number2 != 0
  puts "==> #{number1} / #{number2} = #{number1 / number2}"
else
  puts "Cannot divide by 0!"
end
puts "==> #{number1} % #{number2} = #{number1 % number2}"
puts "==> #{number1} ** #{number2} = #{number1 ** number2}"

# Alternative:

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
