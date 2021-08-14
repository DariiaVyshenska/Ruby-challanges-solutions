class Robot
  @@all_names = []

  def initialize
    reset
  end

  def name
    @name.clone
  end

  def reset
    @name = new_name
    @@all_names << @name
  end

  private

  def new_name
    potential_name = ''
    loop do
      potential_name = generate_random_name
      break if valid_name?(potential_name)
    end
    potential_name
  end

  def valid_name?(name)
    !(@@all_names.include?(name))
  end

  def generate_random_name
    letts = random_set(('A'..'Z').to_a, 2)
    numbs = random_set((0..9).to_a, 3)
    (letts + numbs).join
  end

  def random_set(arr, quant)
    quant.times.map { arr.sample.to_s }
  end
end
