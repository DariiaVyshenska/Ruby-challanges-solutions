module Walkable
  def walk
    puts "#{self.full_name} #{gait} forward"
  end
end

class Person
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end

  def full_name
    "#{name}"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  private

  def gait
    "struts"
  end

  def full_name
    "#{title} #{name}"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end

  def full_name
    "#{name}"
  end
end

class Cheetah < Cat
  def initialize(name)
    super
  end

  private

  def gait
    "runs"
  end

end

byron = Noble.new("Byron", "Lord")
byron.walk
# # => "Lord Byron struts forward"
#
p byron.name
p byron.title

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"
