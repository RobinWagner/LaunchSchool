array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
array2 = []
# []
array1.each { |value| array2 << value }
# array2 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']
puts array2
# ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']
puts array1

# Two arrays and two objects (array and empty array) exist initially.
# The first each method mutates array2 and assigns it the values in array 1.
# At this point the elements within array2 are the sames as in array 1
# (even though array1 and array2 are still different objects.)
# The second each method call mutates some of the elements within array1.
# The same elements are mutated also in array2 since the objects within both
# arrays are the same.

# Mutating element within arrays can become problematic when iterating over
# the elements of an array which are changed. Since the data structure to
# iterate over is modified while iterating the results can be unexpected.
# To avoid this, don't mutate the objects you iterate over.
