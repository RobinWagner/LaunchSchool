vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(elements)
  hsh = {}
  for element in elements do
    if hsh[element]
      hsh[element] += 1
    else
      hsh[element] = 1
    end
  end
  p hsh
end

count_occurrences(vehicles)

# Alternative

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
