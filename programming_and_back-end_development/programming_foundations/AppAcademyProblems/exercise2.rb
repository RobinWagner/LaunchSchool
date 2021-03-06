def factorial(n)
  total = 1
  n.downto(1) do |n|
    total *= n
  end
  total
end

# Alternative solution
def factorial(n)
  (1..n).reduce(1) { |total, n| total *= n }
end

# Test cases
p factorial(0) == 1
p factorial(1) == 1
p factorial(2) == 2
p factorial(3) == 6
p factorial(4) == 24
