friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end

# Alternative:

for i in 0...friends.size
  puts "Hello, #{friends[i]}!"
end
