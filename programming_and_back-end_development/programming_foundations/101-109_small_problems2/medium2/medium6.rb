def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  large_angle = angles.max

  case
  when angles.reduce(:+) != 180 || angles.min <= 0 then :invalid
  when large_angle == 90 then :right
  when large_angle < 90 then :acute
  when large_angle > 90 then :obtuse
  end
end

# Test cases
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
