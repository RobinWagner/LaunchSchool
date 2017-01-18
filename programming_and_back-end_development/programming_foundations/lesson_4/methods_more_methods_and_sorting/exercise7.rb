[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true
# returns true if any of the elements match the block's condition
# block returns last expression
