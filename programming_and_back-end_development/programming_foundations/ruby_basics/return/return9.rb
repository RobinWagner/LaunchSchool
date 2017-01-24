def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0
# 1
# 2
# nil
# puts method within block prints out 0 to 2. Then condition in line 4
# is matched and nil is returned in line 5 which is printed to the screen
# by the p method in line 10.
