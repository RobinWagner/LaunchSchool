# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# loop over numbers from 1 to 99
## puts the number

count = 0

loop do
  count += 1
  puts count
  break if count >= 99
end

# Alternative 1

for i in 1..99 do
  puts i
end
