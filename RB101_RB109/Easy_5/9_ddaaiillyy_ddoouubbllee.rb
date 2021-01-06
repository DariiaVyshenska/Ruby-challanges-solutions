def crunch(sentence)
  new_sentence = []
  sentence.chars
  .each_with_index do |l, idx|
    new_sentence << l if sentence[idx] != sentence[idx+1]
    end
  new_sentence.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
