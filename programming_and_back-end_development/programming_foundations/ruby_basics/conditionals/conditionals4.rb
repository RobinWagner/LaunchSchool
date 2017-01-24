boolean = [true, false].sample

puts boolean ? 'I\'m true!' : 'I\'m false!'

# Alternative:
boolean ? puts("I'm true!") : puts("I'm false!")
