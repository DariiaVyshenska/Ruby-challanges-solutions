def valid_triangle?(sides_arr)
  return false unless sides_arr.all? { |el| el.is_a? Numeric }

  sides_arr.all?(&:positive?) && (sides_arr.min(2).sum > sides_arr.max)
end

def triangle(side1, side2, side3)
  sides_arr = [side1, side2, side3]
  return :invalid unless valid_triangle?(sides_arr)

  bool_comb = []
  sides_arr.combination(2) { |a, b| bool_comb << (a == b) }
  return :equilateral if bool_comb.all?
  return :isosceles if bool_comb.one?
  return :scalene if bool_comb.none?
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(nil, 1, 1) == :invalid
