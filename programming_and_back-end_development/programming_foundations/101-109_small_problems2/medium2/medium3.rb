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

# Alternative solution
def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither]   = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither]   = (counts[:neither] / length.to_f) * 100
end

# Test cases
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
