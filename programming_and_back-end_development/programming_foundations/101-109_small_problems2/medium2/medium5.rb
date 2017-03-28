def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  case
  when sides.reduce(:+) < 2 * sides.max || sides.min <= 0 then :invalid
  when sides.uniq.size == 1 then :equilateral
  when sides.uniq.size == 2 then :isosceles
  when sides.uniq.size == 3 then :scalene
  end
end

# Alternative solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

# Test cases
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
