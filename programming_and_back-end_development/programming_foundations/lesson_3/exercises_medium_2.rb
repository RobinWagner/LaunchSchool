# Question 1

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_male_age = 0
munsters.each { |_, details| total_male_age += details['age'] if details['gender'] == 'male' }
sum

# Question 2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each { |name, details| puts "#{name} is a #{details['age']} year old #{details['gender']}." }

# Question 3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

 "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 4

sentence = "Humpty Dumpty sat on a wall."
sentence.split(/\W/).reverse!.join(' ') + '.'

# Question 5

# Output is 34 (method has separate scope)

# Question 6

# Data is changed since operation was directly executed on the hash.

# Question 7

# => 'paper'

# Question 8

# => 'no'
