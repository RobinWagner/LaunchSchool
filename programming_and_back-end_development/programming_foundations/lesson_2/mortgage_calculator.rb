# Mortgage / Car Loan Calculator

puts "Welcome to the mortgage calculator."
puts "Please enter the loan amount you would like to borrow: "
loan_amount = gets.chomp.to_f

puts "Please enter the Annual Percentage Rate (APR) (in %): "
annual_percentage_rate = gets.chomp.to_f / 100

puts "Please enter the loan duration (in years): "
loan_duration_month = gets.chomp.to_f * 12

monthly_interest_rate = annual_percentage_rate / 12

# Calculate monthly payment
monthly_payment = loan_amount * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate)**-loan_duration_month))

puts "The monthly payment is $ #{monthly_payment.round(2)} a month."
