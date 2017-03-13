def letter_percentages(string)
  lowercase = 0
  uppercase = 0
  neither = 0
  string.split('').each do |letter|
    if ('a'..'z').include?(letter.downcase)
      lowercase += 1 if letter == letter.downcase
      uppercase += 1 if letter == letter.upcase
    else
      neither += 1
    end
  end
  result = { lowercase: (lowercase * 1.0 / string.size * 100.0),
             uppercase: (uppercase * 1.0 / string.size * 100.0),
             neither: (neither * 1.0 / string.size * 100.0) }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
