# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# loop over numbers from 1 to 99
## start with 1
## puts the number
## increase number by 2

count = 1

loop do
  puts count
  count += 2
  break if count > 99
end

# Alternative 1

for i in 1..99 do
  puts i if i.odd?
end

# Alternative 2

count = 1

while count <= 99 do
  puts count
  count += 2
end
