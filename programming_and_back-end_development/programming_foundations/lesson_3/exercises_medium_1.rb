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
