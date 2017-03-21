def buy_fruit(list)
  result = []
  list.each do |elements|
    elements[1].times { result << elements[0] }
  end
  result
end

# Alternative solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# Test case
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
