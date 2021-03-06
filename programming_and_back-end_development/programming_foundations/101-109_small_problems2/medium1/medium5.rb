def diamond(n)
  0.upto(n / 2) do |m|
    puts ' ' * ((n / 2) - m) + '*' * (2 * m + 1)
  end
  1.upto(n / 2) do |m|
    puts ' ' * m + '*' * (n - (2 * m))
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

# Further exploration
def diamond_empty(n)
  0.upto(n / 2) do |m|
    if m == 0
      puts ' ' * ((n / 2) - m) + '*'
    else
      puts ' ' * ((n / 2) - m) + '*' + ' ' * (2 * m - 1) + '*'
    end
  end
  1.upto(n / 2) do |m|
    if m == n / 2
      puts ' ' * m + '*'
    else
      puts ' ' * m + '*' + ' ' * (n - ((2 * m + 2))) + '*'
    end
    # puts ' ' * m + '*' * (n - (2 * m))
  end
end

# Test cases
diamond(1)
diamond(3)
diamond(9)

diamond_empty(5)
