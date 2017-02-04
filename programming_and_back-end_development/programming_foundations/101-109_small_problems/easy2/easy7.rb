# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

for number in 1..99 do
  puts number if number.even?
end

# Alternative:

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
