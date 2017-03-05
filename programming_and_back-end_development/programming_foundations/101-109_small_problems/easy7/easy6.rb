def staggered_case(string)
  staggered = string.split('').map.with_index do |char, index|
    index.even? ? char.upcase : char.downcase
  end
  staggered.join('')
end

# Test cases:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
