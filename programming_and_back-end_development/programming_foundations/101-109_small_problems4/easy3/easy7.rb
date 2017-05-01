def oddities(array)
  result = []
  array.each_with_index do |n, idx|
    result << n if idx.even?
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
