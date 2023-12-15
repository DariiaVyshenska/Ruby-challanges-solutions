def swap(str)
  changed_words = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  changed_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
