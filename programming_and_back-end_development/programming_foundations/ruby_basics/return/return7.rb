def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 5
# Method puts out value 0 to 4. The times method returns the original object,
# which is 5.
