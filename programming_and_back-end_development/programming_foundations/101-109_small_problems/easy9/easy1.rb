def greetings(name, info)
  puts "Hello, #{name[0]} #{name[1]} #{name[2]}!" \
       " Nice to have a #{info[:title]} #{info[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
