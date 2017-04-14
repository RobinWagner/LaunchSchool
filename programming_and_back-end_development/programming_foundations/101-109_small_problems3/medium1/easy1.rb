def rotate_array(array)
  new_array = []
  1.upto(array.size - 1) do |element|
    new_array << array[element]
  end
  new_array << array[0]
end

# Alternative solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Test cases
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
