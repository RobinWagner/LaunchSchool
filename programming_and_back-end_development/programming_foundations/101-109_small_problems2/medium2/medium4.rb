def balanced?(string)
  parentheses = 0
  string.chars.each do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    return false if parentheses < 0
  end
  parentheses == 0 ? true : false
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
