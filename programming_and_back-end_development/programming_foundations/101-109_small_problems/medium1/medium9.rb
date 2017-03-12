def fibonacci(n)
  return 1 if n <= 2
  number1 = 1
  number2 = 1
  total = 0
  3.upto(n) do
    total = number1 + number2
    number1 = number2
    number2 = total
  end
  total
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
