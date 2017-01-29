puts 'Enter the length of the room in meters:'
length = gets.chomp
puts 'Enter the width of the room in meters'
width = gets.chomp

area_meter = length.to_i * width.to_i
area_feet = area_meter * 10.7639
puts "The area of the room is #{area_meter} square meters " \
     "(#{area_feet} square feet)."
