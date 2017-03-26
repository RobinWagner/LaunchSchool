def fibonacci(n)
  return 1 if n <= 2
  total = 0
  num1 = 1
  num2 = 0
  1.upto(n) do |num|
    total = num1 + num2
    num1 = num2
    num2 = total
  end
  total
end

# Alternative solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

# Test cases
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # 4202692702.....8285979669707537501
