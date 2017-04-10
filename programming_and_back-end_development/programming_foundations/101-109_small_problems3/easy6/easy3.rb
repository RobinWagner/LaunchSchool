def find_fibonacci_index_by_length(n)
  i = 1
  while fibonacci(i).to_s.size != n do
    i += 1
  end
  i
end

def fibonacci(n)
  return 1 if n <= 2
  num1 = 1
  num2 = 1
  total = 0
  3.upto(n) do
    total = num1 + num2
    num1 = num2
    num2 = total
  end
  total
end

# Test cases
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847


# 1 1 2 3 5 8 13 21 34
