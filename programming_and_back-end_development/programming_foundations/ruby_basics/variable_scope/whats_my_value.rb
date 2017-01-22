a = 7

def my_value(b)
  b += 10       # assignment does not mutate a variable
end

my_value(a)
puts a

# => 7, since variable is assigned within method and therefore referencing a
# different object
