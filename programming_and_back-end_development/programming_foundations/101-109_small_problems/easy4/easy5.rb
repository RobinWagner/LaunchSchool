def multisum(number)
  sum = 0
  (1..number).each do |number|
    sum += number if number % 3 == 0 || number % 5 == 0
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Alternative

def multisum(number)
  (1..number).select { |n| (n % 3 == 0 || n % 5 == 0) }.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
