vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  result = {}
  vehicles.uniq.each { |vehicle| result[vehicle] = 0 }
  vehicles.map { |vehicle| result[vehicle] += 1 }
  result
end

# Alternative 1:
def count_occurrences(vehicles)
  result = {}
  vehicles.map do |vehicle|
    result[vehicle] ? result[vehicle] += 1 : result[vehicle] = 1
  end
  result
end

# Alternative 2:
def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

p count_occurrences(vehicles)
