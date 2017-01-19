flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hsh = {}
flintstones.each_with_index do |element, index|
  hsh[element] = index
end
