sun = ['visible', 'hidden'].sample

puts 'The sun is bright!' if sun == 'visible'
puts 'The clouds are blocking the sun!' unless sun == 'visible'

# Alternative 1:
puts sun == 'visible' ? 'The sun is so bright!' : 'The clouds are blocking the sun!'


# Alternative 2:
if sun == 'visible'
  puts 'The sun is so bright!'
else
  puts 'The clouds are blocking the sun!'
end
