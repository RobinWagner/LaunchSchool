def merge(array1, array2)
  array1.concat(array2).uniq
end

# Test case:

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
