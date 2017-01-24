numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |num| num * 2 }
p doubled_numbers

# Alternative:
doubled_numbers = numbers.map do |num|
                    num * 2
                  end
p doubled_numbers
