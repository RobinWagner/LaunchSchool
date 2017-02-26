def triangle(n)
  for i in 1..n do
    puts ' ' * (n-i) + '*' * i
  end
end

# Alternative solution:

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

# Test cases:

triangle(5)
triangle(9)
