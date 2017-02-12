def running_total(numbers)
  new_array = []
  total = 0
  for number in 1..numbers.size do
     total += numbers.shift
     new_array << total
  end
  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
