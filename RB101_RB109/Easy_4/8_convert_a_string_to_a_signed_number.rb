MATCH_DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(str)
  num = 0
  str.reverse
      .chars
      .each_with_index { |value, idx| num += (MATCH_DIGITS[value] * 10 ** idx) }
  num
end

# def string_to_signed_integer(str)
#   if str.start_with?('-')
#     -string_to_integer(str.delete_prefix('-'))
#   else
#     string_to_integer(str.delete_prefix('+'))
#   end
# end

def string_to_signed_integer(str)
  n = str.start_with?('-') ? -1 : 1
  n * string_to_integer(str.tr("+-", ""))
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
