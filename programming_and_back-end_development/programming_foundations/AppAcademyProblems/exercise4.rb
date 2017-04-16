def sum_nums(num)
  (1..num).reduce(:+)
end

# Test cases
p sum_nums(1) == 1
p sum_nums(2) == 3
p sum_nums(3) == 6
p sum_nums(4) == 10
p sum_nums(5) == 15
