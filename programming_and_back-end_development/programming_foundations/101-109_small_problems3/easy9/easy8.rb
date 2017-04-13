def sequence(count, number)
  result = []
  total = number
  1.upto(count) { |n| result << (total * n) }
  result
end

# Test cases
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
