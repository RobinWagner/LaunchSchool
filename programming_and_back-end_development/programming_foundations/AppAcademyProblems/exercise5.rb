def time_conversion(minutes)
  hours = minutes / 60
  minutes = minutes % 60
  "#{hours}:#{sprintf("%02d", minutes)}"
end

# Test cases
p time_conversion(15)  == "0:15"
p time_conversion(150) == "2:30"
p time_conversion(360) == "6:00"
