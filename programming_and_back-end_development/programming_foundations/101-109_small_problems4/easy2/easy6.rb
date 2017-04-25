def print_odd_numbers(start_num, end_num)
  (start_num..end_num).each do |n|
    puts n if n.odd?
  end
end

print_odd_numbers(1, 99)
