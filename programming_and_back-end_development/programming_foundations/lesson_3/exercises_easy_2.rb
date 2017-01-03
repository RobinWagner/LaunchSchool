# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")
ages.has_key?("Spot")
ages.include?("Spot")
ages.member?("Spot")

# Question 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.inject(:+)

# Alternative:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum = 0
ages.values.each { |age| sum += age }

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |_, age| age < 100 }

# Alternative:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! { |_, age| age >= 100 }

# Question 4

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# Question 5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# Question 6

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

# Question 7

advice = "Few things in life are as important as house training your pet dinosaur."
advice.match('Dino')

# Alternative:
advice.include?('Dino')

# Question 8

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be"}

# Question 9

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end

# Alternative:
flintstones.map! do |name|
  name[0..2]
end

# Question 10

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0, 3]}

# Alternative:
flintstones.map! { |names| names[0..2]}
