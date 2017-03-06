def multiply_all_pairs(list_1, list_2)
  result = []
  for n in 0..(list_1.size - 1) do
    for m in 0..(list_2.size - 1) do
      result << list_1[n] * list_2[m]
    end
  end
  result.sort
end

# Alternative solution:
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

# Alternative solution 2:
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

# Test case:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
