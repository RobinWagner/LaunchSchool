a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# => Error: Undefined variable or method a
# a is not visible to method (different scope => methods are self-contained
# with respect to local variables)
