def multiply_list(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element * array2[index]
  end
  result
end

# Test case
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
