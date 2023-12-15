class Student
  def initialize(name='defalut name', year='default year')
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end

class MockStudent < Student
  def initialize
    super()
  end
end

p MockStudent.new
