class House
  include Comparable
  
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
home3 = House.new(10_000)
home4 = House.new(1_000_000)

puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

p "***"
p home1.between?(home3, home4)

# I did not enjoy this exersise. There should have been at list a hint or
# this information should have been referenced in the study materials.
# dissapointed.
