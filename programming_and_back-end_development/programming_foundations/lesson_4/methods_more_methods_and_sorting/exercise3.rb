[1, 2, 3].reject do |num|
  puts num
end

# returns an array for all elements for which the block returns false
# returns original array [1, 2, 3] since puts returns nil and nil is
# falsey
