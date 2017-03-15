def oddities(array)
  result = []
  0.upto(array.size - 1) do |index|
    result << array[index] if index.even?
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
