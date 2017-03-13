def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.inject(:+) != 180 || angles.min <= 0
    :invalid
  when angles.max == 90
    :right
  when angles.max > 90
    :obtuse
  when angles.max < 90
    :acute
  end
end

# Test cases:
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
