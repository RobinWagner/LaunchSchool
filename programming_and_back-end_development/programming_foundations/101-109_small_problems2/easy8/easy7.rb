def repeater(string)
  result = ''
  0.upto(string.size - 1) do |n|
    result += string[n] * 2
  end
  result
end

# Alternative solution
def repeater(string)
  string.chars.map { |n| n * 2 }.join
end

# Alternative solution 2
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

# Test cases
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
