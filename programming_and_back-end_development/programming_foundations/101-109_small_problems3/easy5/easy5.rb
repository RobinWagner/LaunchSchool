def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze
end

# Alternative solution
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# Test case
p cleanup("---what's my +*& line?") == ' what s my line '
