class CustomSet
  def initialize(arr = [])
    @set = arr.uniq
  end

  def empty?
    set.empty?
  end

  def contains?(num)
    set.include?(num)
  end

  def subset?(other)
    set.all? { |el| other.set.include?(el) }
  end

  def disjoint?(other)
    set.none? { |el| other.set.include?(el) }
  end

  def add(new_el)
    @set << new_el unless contains?(new_el)
    self
  end

  def ==(other)
    @set.sort == other.set.sort
  end
  alias eql? ==

  def intersection(other)
    self.class.new(set & other.set)
  end

  def difference(other)
    self.class.new(set - other.set)
  end

  def union(other)
    self.class.new(set | other.set)
  end

  protected

  attr_reader :set
end
