def print_in_box(string)
  vertical = string.size + 2
  puts '+' + '-' * vertical + '+'
  puts '|' + ' ' * vertical + '|'
  puts '|' + " #{string} " + '|'
  puts '|' + ' ' * vertical + '|'
  puts '+' + '-' * vertical + '+'
end

# Test cases
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
