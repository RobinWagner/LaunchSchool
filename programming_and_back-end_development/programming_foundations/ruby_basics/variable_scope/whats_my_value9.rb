a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# => 7
# Reference local variable defined before the block
# a within block shadows a of outer scope
