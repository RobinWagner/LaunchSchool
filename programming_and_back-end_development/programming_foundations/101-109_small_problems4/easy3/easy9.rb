def real_palindrome?(string)
  result = ''
  string.chars.each do |char|
    if ('a'..'z').include?(char.downcase) || ('0'..'9').include?(char.downcase)
      result += char
    end
  end
  result.downcase == result.reverse.downcase
end

# Test cases
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
