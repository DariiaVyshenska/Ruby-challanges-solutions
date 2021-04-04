class Shelter
  def initialize
    self.owners = []
  end

  def adopt(new_owner, pet)
    owners << new_owner unless owners.include?(new_owner)
    new_owner.adopt_pet(pet) unless (new_owner.pets.include?(pet) || pet.owner)
    pet.set_owner(new_owner) unless pet.owner
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.print_all_pets
      puts ''
    end
  end

  private

  attr_accessor :owners
end

class Owner
  def initialize(name)
    @name = name
    self.pets = []
  end

  def print_all_pets
    pets.each { |pet| puts pet }
  end

  def number_of_pets
    pets.size
  end

  def name
    @name.clone
  end

  def pets
    @pets.clone
  end

  def adopt_pet(pet)
    @pets << pet
  end

  private

  attr_writer :pets
end

class Pet
  @@all_pets = []

  def initialize(species, name, owner = nil)
    @species = species
    @name = name
    @owner = owner
    @@all_pets << self
  end

  def to_s
    "a #{species} named #{name}"
  end

  def species
    @species.clone
  end

  def name
    @name.clone
  end

  def set_owner(owner)
    @owner = owner
  end

  def owner
    @owner.clone
  end

  # private

  def self.get_all_pets
    @@all_pets.map {|pet| pet.to_s}
  end

  def self.get_homeless_pets
    @@all_pets.select { |pet| !(pet.owner) }.map { |pet| pet.to_s }
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

# p Pet.get_all_pets
p Pet.get_homeless_pets
p Pet.get_homeless_pets.size
p '---'

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
#
shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(phanson, chester)
# shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

p Pet.get_homeless_pets # implement this into shelter to show homeless all_pets
p chester.owner.name
