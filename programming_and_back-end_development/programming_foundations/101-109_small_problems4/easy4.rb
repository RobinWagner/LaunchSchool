vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  result = {}
  vehicles.each do |vehicle|
    result[vehicle] ? result[vehicle] += 1 : result[vehicle] = 1
  end
  result
end

p count_occurrences(vehicles)
