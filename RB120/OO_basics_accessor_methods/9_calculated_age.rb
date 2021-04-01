class Person
  def age=(initial_age)
    @age = initial_age * 2
  end

  def age
    @age * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age
