def fizzbuzz(start_n, end_n)
  result = []
  start_n.upto(end_n) do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      result << 'FizzBuzz'
    elsif (n % 3 == 0)
      result << 'Fizz'
    elsif (n % 5 == 0)
      result << 'Buzz'
    else
      result << n
    end
  end
  result.join(', ')
end

# Test case
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
