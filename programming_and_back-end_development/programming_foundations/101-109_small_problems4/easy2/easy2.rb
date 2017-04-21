# Inputs: lenght, width (in m)
# Output: area (in sqm && sqft)

SQUARE_METER_TO_SQUARE_FEET = 10.7639

puts "Enter the length of the room in meters:"
length_meter = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width_meter = gets.chomp.to_f

square_meter = length_meter * width_meter
square_feet  = (square_meter * SQUARE_METER_TO_SQUARE_FEET).round(2)

puts "The area of the room is #{square_meter} square meters " \
     "(#{square_feet} square feet)."
