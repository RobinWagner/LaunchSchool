def letter_percentages(string)
  lowercase = 0
  uppercase = 0
  neither = 0
  string.chars.each do |char|
    if ('a'..'z').include?(char.downcase)
      char.downcase == char ? lowercase += 1 : uppercase += 1
    else
      neither += 1
    end
  end
  total = string.size
  lowercase_ratio = lowercase.to_f / total * 100
  uppercase_ratio = uppercase.to_f / total * 100
  neither_ratio = neither.to_f / total * 100
  hsh = { lowercase: lowercase_ratio, uppercase: uppercase_ratio,
          neither: neither_ratio }
end

# Test cases
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
