print "What is the bill? "
amount_bill = gets.to_f

print "What is the tip percentage? "
tip = gets.to_f

amount_tip = amount_bill * (tip / 100)
total = amount_bill + amount_tip

puts ""
puts "The tip is $#{amount_tip.round(2)}"
puts "The total is $#{total}"
