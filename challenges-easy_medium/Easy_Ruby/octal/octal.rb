class Octal
  def initialize(oct_num)
    @oct_num = oct_num
  end

  def to_decimal
    return 0 unless valid_oct?

    dec_num = 0
    @oct_num.chars.reverse.each_with_index do |ch, idx|
      dec_num += ch.to_i * 8**idx
    end
    dec_num
  end

  private

  def valid_oct?
    !(@oct_num.match?(/[^0-7]/))
  end
end
