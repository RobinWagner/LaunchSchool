def letter_percentages(string)
  result = {}
  lowercase = 0
  uppercase = 0
  neither = 0
  string.chars.each do |c|
    if ('a'..'z').include?(c.downcase)
      (c == c.downcase) ? lowercase += 1 : uppercase += 1
    else
      neither += 1
    end
  end
    result[:lowercase] = (lowercase.to_f / string.size) * 100
    result[:uppercase] = (uppercase.to_f / string.size) * 100
    result[:neither]   = (neither.to_f / string.size) * 100
    result
end

# Test cases
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
