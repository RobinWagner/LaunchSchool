def short_long_short(string1, string2)
  if string1.size > string2.size
    first = string2
    second = string1
  else
    first = string1
    second = string2
  end
  first + second + first
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
