def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# Breakfast
# When return statement is encountered value is returned and the rest
# of the method is not executed. The puts method then prints the string
# 'Breakfast' to the screen. The code after the return line in the method
# is never executed (bad code design).
