def interleave(array1, array2)
  array1.zip(array2).flatten
end

# Alternative solution
def interleave(array1, array2)
  result = []
  0.upto(array1.size - 1) do |n|
    result << array1[n]
    result << array2[n]
  end
  result
end

# Alternative solution 2
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Test case
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
