def third_greatest(nums)
  nums.sort.reverse[2]
end

# Test cases
p third_greatest([5, 3, 7]) == 3
p third_greatest([5, 3, 7, 4]) == 4
p third_greatest([2, 3, 7, 4]) == 3
