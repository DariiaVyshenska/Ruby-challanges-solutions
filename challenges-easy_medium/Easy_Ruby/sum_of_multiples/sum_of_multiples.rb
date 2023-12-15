class SumOfMultiples
  def initialize(*delims)
    @delims = (delims.empty? ? [3, 5] : delims)
  end

  def to(num)
    (1...num).select { |el| @delims.any? { |d| el.remainder(d).zero? } }.sum
  end

  def self.to(num)
    new.to(num)
  end
end
