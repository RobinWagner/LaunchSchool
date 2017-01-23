def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil

loop do
  loop do
    puts '>> Please enter a positive or negative integer:'
    num1 = gets.chomp
    break if valid_number?(num1)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end

  loop do
      puts '>> Please enter a positive or negative integer:'
      num2 = gets.chomp
      break if valid_number?(num2)
      puts '>> Invalid input. Only non-zero integers are allowed.'
  end

  if (num1.to_i > 0 && num2.to_i > 0)  || (num1.to_i < 0 && num2.to_i < 0)
    puts '>> Sorry. One integer must be positive, one must be negative.'
    puts '>> Please start over.'
  else
    break
  end
end

result = num1.to_i + num2.to_i
puts "#{num1} + #{num2} = #{result}"


# Alternative:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
