def greetings(array, hash)
  name = array.join(' ')
  "=> Hello, #{name}! " \
  "Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

# Alternative solution
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a " \
  "#{status[:title]} #{status[:occupation]} around."
end

# Test case
puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
