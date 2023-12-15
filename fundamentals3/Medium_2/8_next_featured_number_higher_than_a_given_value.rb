MSG = 'There is no possible number that fulfills those requirements'

def featured_number?(num)
  num.digits.size == num.digits.uniq.size
end

def find_closest_divseven(num)
  loop do
    num += 1
    break num if num.remainder(7).zero? && num.odd?
  end
  num
end

def featured(num)
  num = find_closest_divseven(num)

  loop do
    return num if featured_number?(num)
    return MSG if num > 9_876_543_210

    num += 14
  end
end

# p featured_number?(49) == true
# p featured_number?(98) == false
# p featured_number?(133) == false

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
#
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
