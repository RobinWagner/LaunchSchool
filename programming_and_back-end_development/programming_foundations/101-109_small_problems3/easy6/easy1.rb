MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60

def dms(angle)
  degrees = (angle % 360).to_i
  minutes = ((angle - degrees) * MINUTES_IN_DEGREE) % 60
  seconds = (((angle - degrees) * MINUTES_IN_DEGREE) -
            ((angle - degrees) * MINUTES_IN_DEGREE).to_i) * SECONDS_IN_MINUTE
  "#{sprintf("%d", degrees)}°#{sprintf("%02d", minutes)}'#{sprintf("%02d", seconds)}\""
end

# Test cases
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
