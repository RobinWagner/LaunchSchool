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

# Question 4

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

# Alternative 1:
require 'securerandom'

def create_uuid
  SecureRandom.uuid
end

# Alternative 2:
def create_uuid
  "#{SecureRandom.hex(4)}-#{SecureRandom.hex(2)}-#{SecureRandom.hex(2)}-#{SecureRandom.hex(2)}-#{SecureRandom.hex(6)}"
end

create_uuid

# Question 5

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
