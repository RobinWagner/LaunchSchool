def multiply_all_pairs(array1, array2)
  result = []
  array1.each do |element|
    array2.each do |number|
      result << element * number
    end
  end
  result.sort
end

# Alternative solution
def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |num1, num2| num1 * num2 }.sort
end

# Test case
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
