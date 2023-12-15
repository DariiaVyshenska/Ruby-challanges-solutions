class Expander
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# nothing is wrong with the method. it works and I don't see any problem
# unless the work that the method does was not inteded (and there is another
# goal)
