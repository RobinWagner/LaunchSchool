def is_prime?(number)
  return false if number <= 1
  (number-1).downto(2) do |n|
    return false if number % n == 0
  end
  true
end

# Test cases
p is_prime?(1) == false
p is_prime?(2) == true
p is_prime?(3) == true
p is_prime?(4) == false
p is_prime?(9) == false
