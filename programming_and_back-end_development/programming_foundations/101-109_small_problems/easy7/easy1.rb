def interleave(array_1, array_2)
  new_array = []
  for n in 0..(array_1.size - 1) do
    new_array << array_1[n]
    new_array << array_2[n]
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
