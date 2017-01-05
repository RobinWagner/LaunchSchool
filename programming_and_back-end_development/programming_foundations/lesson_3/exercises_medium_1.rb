# Question 1

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Alternative:
indent = "The Flintstones Rock!".length - 1
10.times { puts "The Flintstones Rock!".rjust(indent += 1) }

# Question 2

statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Alternative:
statement = "The Flintstones Rock"
hash = {}
statement = statement.gsub!(/\s+/, '').split('').sort
statement.each do |element|
  if hash[element]
    hash[element] += 1
  else
    hash[element] = 1
  end
end

# Question 3

puts "the value of 40 + 2 is " + (40 + 2)

# Cannot concatenate string and integer (no implicit conversion)
# Fixes:
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Question 4

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# => Output: 1, 3 (numbers is [3,4])

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# => Output: 1, 2 (numbers is [1,2])

# Question 5

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

# Bonus 1 - Purpose of number % dividend == 0
# Make sure that number can be evenly divided by dividend (integer)

# Bonus 2 - Purpose of the second-to-last line
# Return the divisors array (return would be nil without this)

# Question 6

# The << method is destructive and modifies the caller.
# The + method is not destructive.
# Therefore, the second method (rolling_buffer2) is likely to be preferred.

# Question 7

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The limit variable is a local variable and not accessible in the method scope.
# To solve this the limit variable could either be defined as a parameter and
# passed as an argument to the method or limit variable could be changed to a
# constant or global variable.
