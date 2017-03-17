def cleanup(string)
  string = string.split(' ').map do |word|
    word.gsub(/[^a-z]/i , ' ')
  end.join(' ')
  string.gsub(/[\s]+/, ' ')
end

# Alternative solution
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# Test case
p cleanup("---what's my +*& line?") == ' what s my line '
