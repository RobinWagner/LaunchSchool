def sequence(n)
  result = []
  1.upto(n) do |index|
    result << index
  end
  result
end

# Alternative solution
def sequence(number)
  (1..number).to_a
end

# Further exploration
def sequence_adv(integer)
  if integer > 0
    1.upto(integer).to_a
  elsif integer == 0
    [0]
  else
    1.downto(integer).to_a
  end
end


# Test cases
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence_adv(0) == [0]
p sequence_adv(-3) == [1, 0, -1, -2, -3]
