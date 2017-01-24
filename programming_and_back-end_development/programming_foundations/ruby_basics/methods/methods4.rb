def time_of_day(daytime)
  if daytime
    puts 'It\'s daytime!'
  else
    puts 'It\'s nighttime!'
  end
end

daylight = [true, false].sample
time_of_day(daylight)


# Alternative:

def time_of_day(daytime)
  puts daytime ? 'It\'s daytime!' : 'It\'s nighttime!'
end
