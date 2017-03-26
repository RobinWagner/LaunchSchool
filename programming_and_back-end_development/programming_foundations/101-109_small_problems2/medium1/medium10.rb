def fibonacci_last(n)
  fibonacci(n) % 10
end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

# Alternative solution
def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

# Optimized solution
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# Further optimized solution (last digits repeats every 60 Fibonacci numbers)
def fibonacci_last(n)
  (1...n % 60).reduce([1, 1]) { |(a, b), _| [b % 10, (a + b) % 10] }.first
end

# Test cases
p fibonacci_last(15)        == 0        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        == 5       # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       == 5      # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   == 1  # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) == 4 # -> 4
