def diamond(n)
  1.upto(n/2 + 1) do |i|
    puts (' ' * (n/2 - i + 1) + '*' * (2 * i - 1))
  end
  1.upto(n/2) do |i|
    puts ' ' * i + '*' * (n - 2 * i)
  end
end

diamond(1)
diamond(3)
diamond(9)
