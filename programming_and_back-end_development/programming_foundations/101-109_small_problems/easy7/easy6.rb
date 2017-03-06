def staggered_case(string)
  marker = -1
  staggered = string.split('').map do |char|
    marker += 1 if ('a'..'z').to_a.include?(char.downcase)
    marker.even? ? char.upcase : char.downcase
  end
  staggered.join
end

# Test cases:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
