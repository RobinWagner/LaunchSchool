def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
number1 = gets.chomp.to_i

prompt("Enter the second number:")
number2 = gets.chomp.to_i

puts "==> #{number1} + #{number2} = #{number1 + number2}"
puts "==> #{number1} - #{number2} = #{number1 - number2}"
puts "==> #{number1} * #{number2} = #{number1 * number2}"
puts "==> #{number1} / #{number2} = #{number1 / number2}"
puts "==> #{number1} % #{number2} = #{number1 % number2}"
puts "==> #{number1} ** #{number2} = #{number1 ** number2}"
