DEGREES_IN_ANGLE = 360
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60

def dms(angle)
  angles = angle.to_i
  minutes = (angle - angle.to_i).round(4) * MINUTES_IN_DEGREE
  seconds = (minutes.to_f - minutes.to_i).round(4) * SECONDS_IN_MINUTE
  "#{angles}°#{format("%02d", minutes)}\'#{format("%02d", seconds)}\""
end

# Test cases
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
