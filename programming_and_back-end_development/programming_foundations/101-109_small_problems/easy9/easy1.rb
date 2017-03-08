def greetings(name, info)
  puts "Hello, #{name[0]} #{name[1]} #{name[2]}!" \
       " Nice to have a #{info[:title]} #{info[:occupation]} around."
end

# Alternative:
def greetings(name, status)
  puts "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
