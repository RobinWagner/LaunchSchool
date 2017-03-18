def merge(array1, array2)
  array1.zip(array2).flatten.uniq.sort
end

# Test case
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
