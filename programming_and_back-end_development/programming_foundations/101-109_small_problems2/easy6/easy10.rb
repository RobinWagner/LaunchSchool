def triangle(number)
  1.upto(number) do |n|
    puts ' ' * (number - n) + '*' * n
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

# Test cases
triangle(5)
triangle(9)
