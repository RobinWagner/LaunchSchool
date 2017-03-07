def fizzbuzz(num_1, num_2)
  result = []
  for n in num_1..num_2 do
    if n % 3 == 0 && n % 5 == 0
      result << "FizzBuzz"
    elsif n % 3 == 0
      result << "Fizz"
    elsif n % 5 == 0
      result << "Buzz"
    else
      result << "#{n}"
    end
  end
  puts result.join(', ')
end

# Alternative solution:
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

# Test case:
fizzbuzz(1, 15)
