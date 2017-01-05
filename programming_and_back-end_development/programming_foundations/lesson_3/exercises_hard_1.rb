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

# Question 3

# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: one
puts "two is: #{two}"     # => two is: two
puts "three is: #{three}" # => three is: three

# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: one
puts "two is: #{two}"     # => two is: two
puts "three is: #{three}" # => three is: three

# C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: two
puts "two is: #{two}"     # => two is: three
puts "three is: #{three}" # => three is: one
