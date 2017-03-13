def triangle(side1, side2, side3)
  max_side = [side1, side2, side3].max
  small_side1 = [side1, side2, side3].min
  rem_value = [side1, side2, side3]
  rem_value.delete_at(rem_value.find_index(max_side))
  rem_value.delete_at(rem_value.find_index(small_side1))
  small_side2 = rem_value[0]
  return :invalid if (side1 <= 0 || side2 <= 0 || side3 <= 0) ||
                     (small_side1 + small_side2 < max_side)
  return :equilateral if side1 == side2 && side2 == side3 && side1 == side3
  return :isosceles if side1 == side2 || side2 == side3 || side1 == side3
  return :scalene if side1 != side2  && side2 != side3 && side1 != side3
end

# Alternative solution:
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

# Test cases:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
