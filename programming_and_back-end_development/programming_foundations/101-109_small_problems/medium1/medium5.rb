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

# Alternative solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(1)
diamond(3)
diamond(9)
