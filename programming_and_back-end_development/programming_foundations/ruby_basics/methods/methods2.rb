def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}" # Alternative: hello + ' ' + world
end

puts greet
