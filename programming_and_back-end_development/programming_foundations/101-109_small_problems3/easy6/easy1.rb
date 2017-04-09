DEGREE = "\xC2\xB0"
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_IN_DEGREE * SECONDS_IN_MINUTE

def dms(angle)
  degrees = (angle % 360).to_i
  minutes = ((angle - degrees) * MINUTES_IN_DEGREE) % 60
  seconds = (((angle - degrees) * MINUTES_IN_DEGREE) -
            ((angle - degrees) * MINUTES_IN_DEGREE).to_i) * SECONDS_IN_MINUTE
  "#{sprintf("%d", degrees)}°#{sprintf("%02d", minutes)}'#{sprintf("%02d", seconds)}\""
end

# Alternative solution
def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# Test cases
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
