def oddities(array)
  result = []
  for n in 1..array.size do
    result << array[n-1] if n.odd?
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
