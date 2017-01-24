def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# 1
# The method is executed and true is evaluated, assigning 1 to number.
# (A conditional of true will always be executed (since true is true))
# The puts method then prints the value of number (1) to the screen.
