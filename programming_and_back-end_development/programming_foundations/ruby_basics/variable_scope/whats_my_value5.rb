a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# => Xyzzy
# Assignment operation does not mutate the caller (it creates a new object)
