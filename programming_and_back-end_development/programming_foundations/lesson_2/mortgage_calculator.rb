# Mortgage / Car Loan Calculator

def prompt(message)
  puts("=> #{message}")
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

puts "Welcome to the mortgage calculator."

loan_amount = ''
loop do
  prompt("Please enter the loan amount you would like to borrow: ")
  loan_amount = gets.chomp

  if number?(loan_amount)
    loan_amount = loan_amount.to_f
    break
  else
    prompt("Invalid input.")
  end
end

annual_percentage_rate = ''
loop do
  prompt("Please enter the Annual Percentage Rate (APR) (in %): ")
  annual_percentage_rate = gets.chomp

  if number?(annual_percentage_rate)
    annual_percentage_rate = annual_percentage_rate.to_f / 100
    break
  else
    prompt("Invalid input.")
  end
end

loan_duration_month = ''
loop do
  prompt("Please enter the loan duration (in years): ")
  loan_duration_month = gets.chomp

  if number?(loan_duration_month)
    loan_duration_month = loan_duration_month.to_f * 12
    break
  else
    prompt("Invalid input.")
  end
end

monthly_interest_rate = annual_percentage_rate / 12

# Calculate monthly payment
monthly_payment = loan_amount * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate)**-loan_duration_month))

puts "The monthly payment is $ #{monthly_payment.round(2)} a month."
