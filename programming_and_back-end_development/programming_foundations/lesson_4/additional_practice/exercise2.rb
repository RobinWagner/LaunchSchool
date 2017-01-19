ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = 0
ages.each_value { |value| total += value }

# Alternatives:
sum = 0
ages.each { |_, value| sum += value }

ages.values.inject(:+)
