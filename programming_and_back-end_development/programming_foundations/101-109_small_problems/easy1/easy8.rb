def sum(number)
  digit_sum = 0
  while number > 0
    digit_sum += number % 10
    number /= 10
  end
  digit_sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
