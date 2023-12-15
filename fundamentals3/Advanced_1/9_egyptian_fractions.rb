def egyptian(rat)
  count = 1
  rat_sum = Rational(0)
  selected_denom = []
  loop do
    new_rat = Rational(1, count)
    count += 1
    next if (rat <=> rat_sum + new_rat) == -1

    selected_denom << (count - 1)
    rat_sum += new_rat
    break if (rat_sum <=> rat).zero?
  end
  selected_denom
end

def unegyptian(arr)
  arr.inject(Rational(0)) { |sum, i| sum + Rational(1, i) }
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) # == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) # == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) # == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) # == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) # == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) # == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) # == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) # == Rational(3, 1)
