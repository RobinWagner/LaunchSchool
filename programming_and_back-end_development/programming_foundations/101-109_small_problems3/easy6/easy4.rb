def reverse!(array)
  array.size.odd? ? half_size = array.size / 2 : half_size = array.size / 2 - 1
  0.upto(half_size) do |i|
    array[i], array[-(i+1)] = array[-(i+1)], array[i]
  end
  array
end

# Test cases
list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!([]) # => []
p list == []
