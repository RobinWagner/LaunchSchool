def staggered_case(string)
  new_string = ''
  0.upto(string.size - 1) do |n|
    if n.even?
      new_string << string[n].upcase
    else
      new_string << string[n].downcase
    end
  end
  new_string
end

# Alternative solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Test cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
