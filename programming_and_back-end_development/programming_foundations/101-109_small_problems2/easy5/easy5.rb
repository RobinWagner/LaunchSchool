def cleanup(string)
  string = string.split(' ').map do |word|
    word.gsub(/[^a-z0-9]/i , ' ')
  end.join(' ')
  string.gsub(/[\s]+/, ' ')
end

# Test case
p cleanup("---what's my +*& line?") == ' what s my line '
