arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = {}
arr.map do |element|
  new_hash[element[0]] = element[1]
end
new_hash
