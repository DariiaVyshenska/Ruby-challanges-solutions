WORD_TO_DIGIT = {
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9,
  'zero' => 0
}


def castom_join(arr)
  arr.map do |word|
    (word.is_a? String) ? word << ' ' : word
  end
  arr[-1].strip! if arr[-1].is_a? String
  arr.join
end

# Solution that does not modify the caller & does not use gsub
def modify_sentence(str)
  new_str = str.split.map do |word|
    WORD_TO_DIGIT.key?(word) ? WORD_TO_DIGIT[word] : word
  end
  castom_join(new_str)
  # new_str.join(' ')
end

def word_to_digit(str)
  split_lines = str.lines('.', chomp: true)
  new_lines = split_lines.map { |sentence| "#{modify_sentence(sentence)}." }
  new_lines.join(' ')
end

# # Solution that modifies the caller
# def word_to_digit(str)
#   WORD_TO_DIGIT.each_key do |k|
#     str.gsub!(/\b#{k}\b/, WORD_TO_DIGIT)
#   end
#   str
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5551234. Thanks.'
# test = 'Please call me at five five five one two three four. Thanks.'
# p word_to_digit(test)
# # p test
