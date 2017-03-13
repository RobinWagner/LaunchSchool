def balanced?(string)
  opening_params = 0
  closing_params = 0
  string.split('').each do |char|
    opening_params += 1 if char == '('
    closing_params += 1 if char == ')'
    return false if closing_params > opening_params
  end
  opening_params == closing_params
end

# Test cases:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
