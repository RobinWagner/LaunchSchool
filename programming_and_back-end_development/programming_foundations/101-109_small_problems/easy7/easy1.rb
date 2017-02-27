def interleave(array_1, array_2)
  new_array = []
  for n in 0..(array_1.size - 1) do
    new_array << array_1[n]
    new_array << array_2[n]
  end
  new_array
end

# Alternative solution:

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Test case:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
