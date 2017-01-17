[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]
# select performs selection based on truthiness of the block's return value.
# In this case return value is always 'hi' (which is truthy).
# Therefore select returns an array containing all the elements of the original
# array.
