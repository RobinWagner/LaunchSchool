def staggered_case(string)
  index = 0
  new_string_arr = []
  string.chars.each do |n|
    if index.even? && ('a'..'z').include?(n.downcase)
      new_string_arr << n.upcase
      index += 1
    elsif index.odd? && ('a'..'z').include?(n.downcase)
      new_string_arr << n.downcase
      index += 1
    else
      new_string_arr << n
    end
  end
  new_string_arr.join
end

# Test cases
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
