stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
when 'red'
  puts 'Stop!'
end

# Alternative:
case
when stoplight == 'green'
  puts 'Go!'
when stoplight == 'yellow'
  puts 'Slow down!'
when stoplight == 'red'
  puts 'Stop!'
end
