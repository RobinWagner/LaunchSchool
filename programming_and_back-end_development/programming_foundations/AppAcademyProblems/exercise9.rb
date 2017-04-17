def two_sum(nums)
  0.upto(nums.size-1) do |n1|
    0.upto(nums.size-1) do |n2|
      return [n1, n2] if nums[n1] + nums[n2] == 0
    end
  end
  nil
end

# Test cases
p two_sum([1, 3, 5, -3]) == [1, 3]
p two_sum([1, 3, 5]) == nil
