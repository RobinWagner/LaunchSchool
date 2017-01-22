a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# => 7
# asssignment operator creates new scope
# local variable inside method is different from local variable outside of
# method
