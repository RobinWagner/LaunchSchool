def show_multiplicative_average(array)
  sum = 1.0
  array.each do |element|
    sum *= element
  end
  sum /= array.size
  puts "The result is #{sprintf "%.3f", sum}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
