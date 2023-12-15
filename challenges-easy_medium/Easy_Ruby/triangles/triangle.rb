class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError, 'Error in side values' unless valid_sides?
  end

  def kind
    if equilateral?
      'equilateral'
    elsif isosceles?
      'isosceles'
    elsif scalene?
      'scalene'
    end
  end

  private

  def count_unequal_sides
    @sides.uniq.size
  end

  def equilateral?
    count_unequal_sides == 1
  end

  def isosceles?
    count_unequal_sides == 2
  end

  def scalene?
    count_unequal_sides == 3
  end

  def valid_sides?
    sides_numeric? && sides_positive? && valid_tirangle?
  end

  def sides_numeric?
    @sides.all? { |side| side.is_a? Numeric }
  end

  def sides_positive?
    @sides.all?(&:positive?)
  end

  def valid_tirangle?
    sorted_sides = @sides.sort
    sorted_sides[0..1].sum > sorted_sides[2]
  end
end
