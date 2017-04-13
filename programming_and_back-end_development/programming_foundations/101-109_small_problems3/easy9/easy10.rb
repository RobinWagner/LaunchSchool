def buy_fruit(list)
  new_array = []
  list.each { |item| item[1].times { new_array << item[0] } }
  new_array
end

# Alternative solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# Test cases
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
