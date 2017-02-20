def find_fibonacci_index_by_length(number)
  index_fibonacci_number = 2
  while fibonacci(index_fibonacci_number).to_s.length < number do
    index_fibonacci_number += 1
  end
  index_fibonacci_number
end

def fibonacci(number)
  first = 1
  second = 1
  total = 2
  for n in 2..number-1 do
    total = first + second
    first = second
    second = total
  end
  total
end

# Alternative solution:

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

# Test cases:

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
