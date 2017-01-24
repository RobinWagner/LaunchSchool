first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

# Alternative:
full_name = first_name + ' ' + last_name
puts full_name

first_name.concat( "#{last_name}")
puts full_name

first_name + ' ' << first_name
puts full_name
