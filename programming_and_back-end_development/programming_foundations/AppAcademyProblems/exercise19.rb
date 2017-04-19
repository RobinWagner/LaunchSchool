def greatest_common_factor(number1, number2)
  if number1 > number2
    max = number1
    min = number2
  else
    max = number2
    min = number1
  end
  min.downto(1) do |num|
    return num if (min % num == 0) && (max % num == 0)
  end
end

# Test cases
p greatest_common_factor(3, 9) == 3
p greatest_common_factor(16, 24) == 8
p greatest_common_factor(3, 5) == 1
