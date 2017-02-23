def halvsies(array)
  first_half = []
  second_half = []
  result = []
  if array.size % 2 == 0
    array_half_size = array.size / 2 - 1
  else
    array_half_size = array.size / 2
  end
  for n in 0..array_half_size do
      first_half << array[n]
  end
  for n in array_half_size+1..array.size-1 do
    second_half << array[n]
  end
  result << first_half
  result << second_half
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
