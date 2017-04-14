def diamond(n)
  1.upto(n/2 + 1) do |i|
    puts (' ' * (n/2 - i + 1) + '*' * (2 * i - 1))
  end
  1.upto(n/2) do |i|
    puts ' ' * i + '*' * (n - 2 * i)
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
