def print_odd_numbers(start_num, end_num)
  (start_num..end_num).each { |n| puts n if n.odd? }
end

print_odd_numbers(1, 99)
