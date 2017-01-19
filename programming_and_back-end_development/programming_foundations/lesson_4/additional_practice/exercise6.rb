flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |element|
  element[0, 3]
end

# shorter:
flintstones.map! { |element| element[0, 3] }
