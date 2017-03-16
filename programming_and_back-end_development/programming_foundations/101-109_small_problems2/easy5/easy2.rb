def time_of_day(minutes)
  hours = 0
  if minutes >= 0
    if minutes > 59
      hours = (minutes / 60) % 24
      minutes = minutes % 60
    end
  else
    if minutes.abs > 59
      hours = 23 - ((minutes.abs / 60) % 24)
      minutes = 60 - (minutes.abs % 60)
    else
      minutes = 60 - minutes.abs
      hours = 23
    end
  end
  # minutes = sprintf("#2f", minutes)
  "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
end

# Test cases
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
