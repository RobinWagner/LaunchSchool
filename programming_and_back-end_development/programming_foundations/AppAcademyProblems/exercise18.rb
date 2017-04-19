def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  palindromes = []
  (0..string.size).each do |n|
    (n..string.size).each do |i|
      palindromes << string.slice(n, i) if palindrome?(string.slice(n, i))
    end
  end
  if palindromes
    largest = palindromes[0]
    palindromes.each do |element|
      largest = element if element.size > largest.size
    end
  end
  largest
end

# Test cases
p longest_palindrome('abcbd') == 'bcb'
p longest_palindrome('abba') == 'abba'
p longest_palindrome('abcbdeffe') == 'effe'
