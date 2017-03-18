def reverse(array)
  new_array = []
  0.upto(array.size - 1) do |index|
    new_array[array.size - (index + 1)] = array[index]
  end
  new_array
end

# Alternative solution
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

# Test cases
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
