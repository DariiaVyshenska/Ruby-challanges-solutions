# def penultimate(str)
#   (str.split)[-2]
# end
#
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

EVEN_WNUM_MSG = 'No middle word - sentence contains even number of words!'

def penultimate2(str)
  if !(str.is_a? String) || str.split.empty?
    nil
  else
    str_arr = str.split
    arr_size = str_arr.size
    return str_arr.at((arr_size / 2)) if arr_size.odd?
    puts EVEN_WNUM_MSG
    nil
  end
end

p penultimate2('')
p penultimate2('  ')
p penultimate2(nil)
p penultimate2(3)
p penultimate2('one')
p penultimate2('first second')
p penultimate2('select middle word')
