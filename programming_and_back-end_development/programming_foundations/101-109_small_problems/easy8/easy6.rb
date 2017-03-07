def fizzbuzz(num_1, num_2)
  for n in num_1..num_2 do
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
  end
end

fizzbuzz(1, 15)
