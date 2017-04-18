def dasherize_number(num)
  result_array = []
  array_nums = num.to_s.chars.map { |digit| digit.to_i }
  array_nums.each_with_index do |num, idx|
    if num.odd?
      result_array << '-' unless idx == 0
      result_array << num.to_s
      result_array << '-' unless (idx == array_nums.size-1)
    else
      result_array << num.to_s
    end
  end
  result_array.join('').squeeze('-')
end

# Test cases
p dasherize_number(203) == '20-3'
p dasherize_number(303) == '3-0-3'
p dasherize_number(333) == '3-3-3'
p dasherize_number(3223) == '3-22-3'
