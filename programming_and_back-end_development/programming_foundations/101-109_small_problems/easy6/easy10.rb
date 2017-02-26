def triangle(n)
  for i in 1..n do
    puts ' ' * (n-i) + '*' * i
  end
end

# Test cases:

triangle(5)
triangle(9)
