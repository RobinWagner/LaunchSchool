def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 10
# Times method prints values 0 to 4 to the screen. count_sheep method
# returns 10 which is passed to the puts method in line 8 which prints
# it to the screen.
