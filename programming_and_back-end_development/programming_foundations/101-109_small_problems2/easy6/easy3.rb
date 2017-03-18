def find_fibonacci_index_by_length(number_of_digits)
  index = 1
  loop do
    break if number_of_digits <= fibonacci(index).to_s.size
    index += 1
  end
  index
end

def fibonacci(position)
  num1 = 1
  num2 = 1
  total = 0
  1.upto(position) do
    num1 = num2
    num2 = total
    total = num1 + num2
  end
  total
end

# Test cases
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
