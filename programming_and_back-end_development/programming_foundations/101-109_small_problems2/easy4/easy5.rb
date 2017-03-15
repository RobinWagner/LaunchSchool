def multisum(number)
  total = 0
  1.upto(number) { |n| total +=n if (n % 3 == 0) || (n % 5 == 0) }
  total
end

# Alternative solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# Further exploration
def multisum(number)
  total = []
  1.upto(number) { |n| total << n if (n % 3 == 0) || (n % 5 == 0) }
  total.inject(:+)
end

# Test cases
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
