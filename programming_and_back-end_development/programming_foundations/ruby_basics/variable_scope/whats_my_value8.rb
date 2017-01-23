array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# => Error: Undefined local variable a
# a is local to the block since it was not previously defined
