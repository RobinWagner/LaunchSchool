numbers = [7, 9, 13, 25, 18]
count = 0

until numbers.size == count
  puts numbers[count]
  count += 1
end

# Alternative (mutates numbers array):
until numbers.size == 0
  puts numbers.shift
end
