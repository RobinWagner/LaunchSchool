def multiply_all_pairs(list_1, list_2)
  result = []
  for n in 0..(list_1.size - 1) do
    for m in 0..(list_2.size - 1) do
      result << list_1[n] * list_2[m]
    end
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
