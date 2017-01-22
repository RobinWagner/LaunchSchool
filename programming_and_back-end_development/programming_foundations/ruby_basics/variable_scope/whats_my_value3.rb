a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# => 7
# A within method is new local variable which only exists inside the scope of
# the method
