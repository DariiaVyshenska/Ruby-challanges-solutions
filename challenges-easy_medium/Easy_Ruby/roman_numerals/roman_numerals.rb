class RomanNumeral
  ROMAN_BASES = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def initialize(num)
    @num = num
  end

  def to_roman
    result = ''
    the_num = @num
    ROMAN_BASES.keys.sort.reverse_each do |dividor|
      base = the_num.div(dividor)
      result << ROMAN_BASES[dividor] * base
      the_num -= base * dividor
    end
    result
  end
end
