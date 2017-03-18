def halvsies(array)
  result = []
  array1 = []
  array2 = []
  array.size.odd? ? half_size = (array.size / 2) : half_size = (array.size / 2) - 1
  0.upto(half_size) do |index|
    array1 << array[index]
  end
  (half_size + 1).upto(array.size - 1) do |n|
    array2 << array[n]
  end
  result = [array1, array2]
end

# Alternative solution
def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end

# Test cases
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
