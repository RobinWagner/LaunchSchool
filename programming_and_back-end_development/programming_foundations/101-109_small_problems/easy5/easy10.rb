def print_in_box(string)
  p "+-#{'-' * string.size}-+"
  p "| #{' ' * string.size} |"
  p "| #{string} |"
  p "| #{' ' * string.size} |"
  p "+-#{'-' * string.size}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
