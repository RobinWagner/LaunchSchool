choice = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  choice = gets.chomp.downcase
  puts ">> Invalid input! Please enter y or n" unless choice == 'y' || choice == 'n'
  if choice == 'y' || choice == 'n'
    puts 'something' if choice == 'y'
    break
  end
end


# Alternative:
choice = nil
loop do
  puts '>> Do you want me to print something (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'
