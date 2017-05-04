# Input: Integer
# Output: ' ' and '*'

#


def diamond(n)
  half_size = n / 2
  1.upto(half_size) do |i|
    puts ' ' * (half_size - i + 1) + '*' * (2 * i - 1)
  end
  puts '*' * n
  half_size.downto(1) do |i|
    puts ' ' * (half_size - i + 1) + '*' * (2 * i - 1)
  end
end

diamond(1)
diamond(3)
diamond(9)
