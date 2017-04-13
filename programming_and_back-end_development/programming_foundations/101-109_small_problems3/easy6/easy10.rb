def triangle(n)
  1.upto(n) do |i|
    puts ' ' * (n - i) + '*' * i
  end
end

# Test cases
triangle(5)
triangle(9)
