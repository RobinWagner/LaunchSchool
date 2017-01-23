a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# => "Xy-zy"
# my_value mutates the caller (a) since Strings are mutable (numbers are
# immutable). We actually modify the string referenced by b and b references
# the same string as a (reult from printing a shows an update to the value of
# the string)
