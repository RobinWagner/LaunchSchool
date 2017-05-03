def rotate_array(array)
  new_array = []
  0.upto(array.size-1).each do |idx|
    new_array << array[idx] if idx > 0
  end
  new_array << array[0]
end

# Test cases
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
