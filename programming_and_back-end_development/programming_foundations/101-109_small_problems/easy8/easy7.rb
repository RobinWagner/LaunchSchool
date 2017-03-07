def repeater(string)
  result = ""
  0.upto(string.size - 1) do |index|
    result += string[index] * 2
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
