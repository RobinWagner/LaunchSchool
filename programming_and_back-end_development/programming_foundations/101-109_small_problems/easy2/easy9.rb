name = 'Bob'
save_name = name      # Bob
name.upcase!          # BOB
puts name, save_name  # BOB
                      # BOB
                      # => nil

# There are 2 variables (name, save_name) which point to one object ('Bob').
# The destructive method 'upcase!' is called on the object which is mutated.
# Since the assignment for either variable is not changed, both variables still
# point to the same object.
