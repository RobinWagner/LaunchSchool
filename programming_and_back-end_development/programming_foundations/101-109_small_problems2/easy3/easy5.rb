def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

# Test cases
p square(5) == 25
p square(-8) == 64
