class Diamond
  def self.make_diamond(chr)
    uphalf = upper_half(chr)
    lwhalf = uphalf[0..-2].reverse
    (uphalf + lwhalf).map { |line| line + "\n" }.join('')
  end

  class << self
    private

    def upper_half(chr)
      rows = []
      letters(chr).each_with_index do |ch, idx|
        str = blank_halfline(chr)
        str[idx] = ch
        rows << str.reverse + str[1..]
      end
      rows
    end

    def letters(chr)
      ('A'..chr).to_a
    end

    def blank_halfline(chr)
      ' ' * letters(chr).size
    end
  end
end
