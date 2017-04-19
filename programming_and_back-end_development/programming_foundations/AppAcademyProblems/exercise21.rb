def num_repeats(string)
  count_repeat = 0
  string.chars.uniq.each do |char|
    count_repeat += 1 if string.count(char) >= 2
  end
  count_repeat
end

# Test cases
p num_repeats("abdbc") == 1
p num_repeats("aaa") == 1
p num_repeats("abab") == 2
p num_repeats("cadac") == 2
p num_repeats("abcde") == 0
