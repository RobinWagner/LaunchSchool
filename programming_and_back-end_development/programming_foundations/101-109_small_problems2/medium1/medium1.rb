def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Further exploration
def rotate_string(string)
  string[1..-1] + string[0]
end

def rotate_integers(int)
  rotate_string(int.to_s).to_i
end

# Further exploration - alternative solution
def rotate_string(string)
  rotate_array(string.chars).join
end

# Test cases
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string('test') == 'estt'
p rotate_integers(123) == 231
