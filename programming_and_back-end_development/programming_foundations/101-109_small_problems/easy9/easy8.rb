def sequence(count, sequence)
  result = []
  count.times { |pos| result << sequence * (pos + 1) }
  result
end

# Alternative:
def sequence(count, first)
  (1..count).map { |idx| idx * first }
end

# Test cases:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
