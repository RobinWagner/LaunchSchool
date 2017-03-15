def running_total(array)
  sub_total = 0
  0.upto(array.size - 1) do |n|
    array[n] += sub_total
    sub_total = array[n]
  end
  array
end

# Test cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
