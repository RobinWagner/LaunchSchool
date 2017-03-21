def negative(number)
  number.abs * -1
end

# Alternative solution
def negative(number)
  number > 0 ? number * -1 : number
end

# Alternative solution 2
def negative(number)
  number > 0 ? -number : number
end

# Test cases
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
