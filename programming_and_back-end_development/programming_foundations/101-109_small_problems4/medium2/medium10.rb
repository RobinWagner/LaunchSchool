# (n1 + n2 + n3)**2 - (n1**2 + n2**2 + n3**2)

def sum_square_difference(n)
  first_part = ((1..n).reduce(:+) ** 2)
  second_part = ((1..n).map { |n| n**2 }.reduce(:+))
  first_part - second_part
end

# Test cases
p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
