def valid_triangle?(angles_arr)
  return false unless angles_arr.all? { |el| el.is_a? Numeric }

  angles_arr.all?(&:positive?) && (angles_arr.sum == 180)
end

def triangle(angle1, angle2, angle3)
  angles_arr = [angle1, angle2, angle3]
  return :invalid unless valid_triangle?(angles_arr)

  return :right if angles_arr.any? { |i| i == 90 }
  return :obtuse if angles_arr.one? { |i| i > 90 }

  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
