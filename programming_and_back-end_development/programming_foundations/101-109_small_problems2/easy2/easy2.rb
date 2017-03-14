SQMETERS_TO_SQFEET = 10.7639
INCH_PER_FEET = 12
CENTIMETER_PER_METER = 100

puts "Enter the length of the room in meters: "
length_meters = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width_meters = gets.chomp.to_f

area_meters = (length_meters * width_meters).round(2)
area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_meters} square meters " \
     "(#{area_feet} square feet)."


puts "Enter the length of the room in feet: "
length_feet = gets.chomp.to_f

puts "Enter the width of the room in feet: "
width_feet = gets.chomp.to_f

square_feet = (length_feet * width_feet).round(2)
square_inch = square_feet * INCH_PER_FEET**2

square_meter = (square_feet / SQMETERS_TO_SQFEET).round(2)
square_centimeter = square_meter * CENTIMETER_PER_METER**2

puts "The area of the room is #{square_meter} square meters, " \
     "#{square_centimeter} square centimeter, #{square_feet} square feet and " \
     "#{square_inch} square inch."
