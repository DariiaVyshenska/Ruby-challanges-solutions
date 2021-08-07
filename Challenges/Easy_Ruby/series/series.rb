class Series
  def initialize(str)
    @str = str
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @str.size

    numbers_arr.each_cons(slice_size).to_a
  end

  private

  def numbers_arr
    @str.chars.map(&:to_i)
  end
end
