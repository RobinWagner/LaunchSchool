def repeat(string, int)
  int.times { puts string }
end

repeat('Hello', 3)

# Alternative:

def repeat(string, int)
  int.times do
    puts string
  end
end
