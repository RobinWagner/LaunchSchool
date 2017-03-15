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

# Test cases
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
