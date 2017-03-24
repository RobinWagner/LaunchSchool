def diamond(n)
  0.upto(n / 2) do |m|
    puts ' ' * ((n / 2) - m) + '*' * (2 * m + 1)
  end
  1.upto(n / 2) do |m|
    puts ' ' * m + '*' * (n - (2 * m))
  end
end

diamond(1)
diamond(3)
diamond(9)
