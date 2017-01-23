a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# => Error: Undefined variable or method 'a'
# Local variable a in outer score is not visible in inner (method) scope
# => 7
