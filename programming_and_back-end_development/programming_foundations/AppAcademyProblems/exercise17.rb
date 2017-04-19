def is_prime?(number)
  if number <= 1
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  prime_count = 0
  num = 1
  loop do
    num += 1
    prime_count += 1 if is_prime?(num)
    return num if prime_count == n
  end
end

# Test cases
p nth_prime(1) == 2
p nth_prime(2) == 3
p nth_prime(3) == 5
p nth_prime(4) == 7
p nth_prime(5) == 11
