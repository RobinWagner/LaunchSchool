def balanced?(string)
  parentheses = 0
  string.chars.each do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    return false if parentheses < 0
  end
  parentheses == 0 ? true : false
end

# Alternative solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# Test cases
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
