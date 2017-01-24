greeting = 'Hello!'
greeting.replace('Goodbye!')

puts greeting

# Alternative:
greeting = 'Hello!'
greeting.gsub!('Hello!', 'Goodbye!')

puts greeting
