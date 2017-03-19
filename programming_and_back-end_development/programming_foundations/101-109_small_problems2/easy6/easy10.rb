def triangle(number)
  1.upto(number) do |n|
    puts ' ' * (number - n) + '*' * n
  end
end

# Test cases
triangle(5)
triangle(9)
