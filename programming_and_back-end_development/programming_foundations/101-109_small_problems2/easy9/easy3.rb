def negative(number)
  number.abs * -1
end

# Test cases
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
