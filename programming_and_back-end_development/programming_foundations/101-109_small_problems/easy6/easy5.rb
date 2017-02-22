# Input: array
# Output: new array (don't mutate original array)

def reverse(array)
  new_array = []
  length = array.size
  index = -1
  for n in 0..length-1 do
    new_array[n] = array[index]
    index -= 1
  end
  new_array
end

# Alternative solution:

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

# Test cases:

p reverse([1,2,3,4]) == [4,3,2,1]
p reverse(%w(a b c d e)) == %w(e d c b a)
p reverse(['abc']) == ['abc']
p reverse([]) == []

list = [1, 2, 3]
new_list = reverse(list)
p list.object_id != new_list.object_id
p list == [1, 2, 3]
p new_list == [3, 2, 1]
