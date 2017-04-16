def reverse(string)
  new_string = ''
  (1..string.size).each do |n|
    new_string += string[-n]
  end
  new_string
end

# Test cases
p reverse('abc') == 'cba'
p reverse('a') == 'a'
p reverse('') == ''
