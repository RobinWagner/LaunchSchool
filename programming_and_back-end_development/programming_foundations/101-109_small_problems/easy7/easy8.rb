def multiply_list(list1, list2)
  result = []
  for n in 0..(list1.size - 1) do
    result << list1[n] * list2[n]
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
