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

# Test cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
