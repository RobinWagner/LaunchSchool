def fibonacci(num)
  num1 = 1
  num2 = 1
  total = 0
  return 1 if num <= 2
  3.upto(num) do
    total = num1 + num2
    num1 = num2
    num2 = total
  end
  total
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
