numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_number = numbers.select { |_, value| value < 25 }

p low_number
