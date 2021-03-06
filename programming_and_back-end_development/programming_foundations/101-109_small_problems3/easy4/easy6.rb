def running_total(array)
  total = 0
  result = []
  0.upto(array.size - 1) do |n|
    total += array[n]
    result << total
  end
  result
end

# Alternative solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# Further exploration
def running_total(array)
  sum = 0
  array.each_with_object([]) { |num, total| total << num + total.last.to_i }
end

# Test cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
