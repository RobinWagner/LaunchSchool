words = "the flintstones rock"

def titelize(sentence)
  sentence.split.each { |word| word.capitalize! }.join(' ')
end

# Alternative:
def titelize(sentence)
  sentence.split.map { |word| word.capitalize }.join(' ')
end

titelize(words)
