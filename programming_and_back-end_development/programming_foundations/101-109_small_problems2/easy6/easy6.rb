def merge(array1, array2)
  array1.zip(array2).flatten.uniq.sort
end

# Alternative solution
def merger(array1, array2)
  new_array = array1
  while array2.to_s.size > 0
    new_array << array2.pop
  end
  new_array.flatten.uniq.sort
end

# Alternative solution 2
def merge(array_1, array_2)
  array_1 | array_2
end

# Test case
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
