def twice(number)
  string_num = number.to_s
  if string_num.size.odd?
    number * 2
  elsif string_num.size == 2
    if string_num[0, string_num.size/2] == string_num[1, string_num.size/2]
      number
    else
      number * 2
    end
  else
    if string_num[0, string_num.size / 2] == string_num[string_num.size / 2, string_num.size / 2.0]
      number
    else
      number * 2
    end
  end
end

# Test cases:
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
