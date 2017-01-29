print "What is the bill? "
amount_bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

amount_tip = (amount_bill * (tip_percentage / 100)).round(2)
total      = (amount_bill + amount_tip).round(2)

puts "The tip is $#{amount_tip}"
puts "The total is $#{total}"
