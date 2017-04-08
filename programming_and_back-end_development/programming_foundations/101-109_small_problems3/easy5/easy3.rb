MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  time_array = time.split(':')
  hours = time_array[0].to_i
  return 0 if hours == 0 || hours == 24
  minutes = time_array[1].to_i + hours * MINUTES_PER_HOUR
end

def before_midnight(time)
  time_array = time.split(':')
  hours = time_array[0].to_i
  return 0 if hours == 0 || hours == 24
  minutes = MINUTES_PER_DAY - (time_array[1].to_i + hours * MINUTES_PER_HOUR)
end

# Test cases
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
