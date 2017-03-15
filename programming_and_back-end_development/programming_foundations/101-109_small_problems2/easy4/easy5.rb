def multisum(number)
  total = 0
  1.upto(number) { |n| total +=n if (n % 3 == 0) || (n % 5 == 0) }
  total
end

# Test cases
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
