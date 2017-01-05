# Question 1

if false
  greeting = “hello world”
end

greeting

# => nil
# When initializing a local variable inside an if block, even if that
# if block is not executed, the local variable is initialized to nil

# Question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => { a: 'hi there'}
