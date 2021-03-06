def buy_fruit(items)
  result = []
  for n in 0..items.size - 1 do
    items[n][1].times { result << items[n][0]}
  end
  result
end

# Alternative:
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# Test cases:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
