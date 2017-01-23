a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# => 3
# Within blocks (each method) local variables of outer scope are visible and
# can be changed / reassigned
