# Question 1

if false
  greeting = “hello world”
end

greeting

# => nil
# When initializing a local variable inside an if block, even if that
# if block is not executed, the local variable is initialized to nil
