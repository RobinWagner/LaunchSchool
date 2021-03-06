def real_palindrome?(input)
  actual = input.downcase
  actual = actual.chars.delete_if { |char| !('a'..'z').include?(char.downcase) }
  actual == actual.reverse
end

# Alternative solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

def palindrome?(object)
  object == object.reverse
end

# Alternative solution 2
def real_palindrome?(string)
  string = string.downcase.gsub(/[^a-z0-9]/i, '')
  string == string.reverse
end

# Test cases
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
