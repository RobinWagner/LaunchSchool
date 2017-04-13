def staggered_case(string)
  index = 0
  new_string_arr = []
  string.chars.each do |n|
    index.even? ? (new_string_arr << n.upcase) : (new_string_arr << n.downcase)
    index += 1
  end
  new_string_arr.join
end

# Alternative (mutating) solution
def staggered_case(string)
  index = 0
  string.chars.each do |n|
    index.even? ? n.upcase! : n.downcase!
    index += 1
  end.join
end

# Test cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
