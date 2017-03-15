def short_long_short(string1, string2)
  if string1.size > string2.size
    max = string1
    min = string2
  else
    max = string2
    min = string1
  end

  min + max + min
end

# Alternative solution
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

# Test cases
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
