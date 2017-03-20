def staggered_case(string)
  new_string = ''
  count = 0
  0.upto(string.size - 1) do |n|
    if ('a'..'z').include?(string[n].downcase)
      if count.odd?
        new_string << string[n].downcase
        count += 1
      else
        new_string << string[n].upcase
        count += 1
      end
    else
      new_string << string[n]
    end
  end
  new_string
end

# Alternative solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Test case
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
