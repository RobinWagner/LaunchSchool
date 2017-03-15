def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

def power_to_n(base, exponent)
  result = base.to_f
  exponent.to_i.times { result = multiply(base, result) } if exponent >= 0
  exponent.to_i.abs.times { result = result / base } if exponent < 0
  result
end

# Test cases
# p square(5) == 25
# p square(-8) == 64
p power_to_n(3, 3)
