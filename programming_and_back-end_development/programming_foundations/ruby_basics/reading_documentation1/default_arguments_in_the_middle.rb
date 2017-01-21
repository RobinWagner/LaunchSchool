def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# => [4, 5, 3, 6]
# First assigns 4 to a and 6 to d (no optional arguments). Since 5 needs to
# be assigned it is assigned to b and c is assigned the default parameter 3
# Described in Ruby docs: http://ruby-doc.org/core-2.4.0/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments
