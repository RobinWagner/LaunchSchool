def bubble_sort!(array)
  (array.size - 1).times do
    (0..(array.size - 2)).each do |n|
      array[n], array[n+1] = array[n+1], array[n] if array[n] > array[n+1]
    end
  end
end

# Test cases
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
