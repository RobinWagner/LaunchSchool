def scramble_string(string, positions)
  result = ""

  i = 0
  while i < positions.length
    result = result + string[positions[i]]
    i += 1
  end

  return result
end

# Test cases
p scramble_string("abcd", [3, 1, 2, 0]) == "dbca"
p scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"
