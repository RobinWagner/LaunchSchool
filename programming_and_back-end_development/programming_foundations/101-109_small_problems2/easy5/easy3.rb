MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours_minutes = time.split(':')
  hours = hours_minutes[0].to_i
  return 0 if hours == HOURS_PER_DAY
  minutes = hours_minutes[1].to_i + MINUTES_PER_HOUR * hours
end

def before_midnight(time)
  return 0 if time == '00:00' || time == '24:00'
  MINUTES_PER_DAY - after_midnight(time)
end

# Test cases
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
