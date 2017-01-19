flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] == "Be" }

# Alternative:
i = 0
flintstones.each do |word|
  break i if word[0, 2] == 'Be'
  i += 1
end
