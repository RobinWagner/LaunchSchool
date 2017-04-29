# def square(num)
#   num**2
# end

# Alternative solution
def square(num)
  multiply(num, num)
end

def multiply(num1, num2)
  num1 * num2
end

# Test case
p square(5) == 25
p square(-8) == 64
