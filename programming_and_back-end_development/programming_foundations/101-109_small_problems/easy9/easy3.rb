def negative(number)
  number > 0 ? -number : number
end

# Alternative:
def negative(number)
  -number.abs
end

# Test cases:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
