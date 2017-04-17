def nearby_az(string)
  count_distance_az = -1
  flag = false
  result = -1
  string.chars.each do |n|
    if n == 'a'
      flag = true
    end
    count_distance_az += 1 if flag
    result = count_distance_az if n == 'z'
  end
  result <= 3 && result > 0
end

# Test cases
p nearby_az('baz')  == true
p nearby_az('abz')  == true
p nearby_az('abcz') == true
p nearby_az('a')    == false
p nearby_az('z')    == false
p nearby_az('za')   == false
