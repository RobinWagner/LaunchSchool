require 'pry'

def bubble_sort!(array)
  (array.size - 1).times do
    0.upto(array.size - 2) do |i|
      if array[i] > array[(i+1)]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array
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
