def oddities(array)
  result = []
  0.upto(array.size - 1) do |index|
    result << array[index] if index.even?
  end
  result
end

# Alternative 1
def oddities(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.even?
  end
  result
end

# Alternative 2
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
