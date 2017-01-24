[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Create nested array:
people = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
grouped_people = people.each_slice(2).to_a
