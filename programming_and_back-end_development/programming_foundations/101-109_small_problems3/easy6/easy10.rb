def triangle(n)
  1.upto(n) do |i|
    puts ' ' * (n - i) + '*' * i
  end
end

# Alternative solution
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

# Further exploration
def flipped_triangle(n)
  n.downto(0) do |i|
    puts (' ' * (n - i)) + ('*' * i)
  end
end

# Test cases
triangle(5)
triangle(9)

flipped_triangle(5)
flipped_triangle(9)
