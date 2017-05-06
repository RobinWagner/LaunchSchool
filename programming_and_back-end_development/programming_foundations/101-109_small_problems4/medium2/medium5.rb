def triangle(side1, side2, side3)
  angles = [side1, side2, side3]
  if (angles.min > 0) && (angles.reduce(:+) > 2 * angles.max)
    if angles.max == angles.min
      :equilateral
    elsif angles.uniq.size == 2
      :isosceles
    elsif angles.uniq.size == 3
      :scalene
    end
  else
    :invalid
  end
end

# Test cases
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
