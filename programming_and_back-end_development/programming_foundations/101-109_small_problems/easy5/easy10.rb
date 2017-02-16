def print_in_box(string)
  p "+-#{'-' * string.size}-+"
  p "| #{' ' * string.size} |"
  p "| #{string} |"
  p "| #{' ' * string.size} |"
  p "+-#{'-' * string.size}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Alternative solution:

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
