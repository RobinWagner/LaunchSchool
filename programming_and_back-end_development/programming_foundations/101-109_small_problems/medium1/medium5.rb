def diamond(n)
  whitespace = n / 2
  (1..n).step(2) do |index|
    puts ' ' * whitespace + '*' * index + ' ' * whitespace
    whitespace -= 1
  end
  whitespace += 1
  while n > 1 do
    whitespace += 1
    n -= 2
    puts ' ' * whitespace + '*' * n + ' ' * whitespace
  end
end

diamond(1)
diamond(3)
diamond(9)
