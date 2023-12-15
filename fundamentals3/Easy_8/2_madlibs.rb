WORD_TYPES = ['a noun', 'an adverb', 'a verb']
SENTENCE_PAD = ['can', 'will', 'should']
SENTENCE_END = ['Can you?', 'Is it right?', "How's that?"]

def get_answer(word_type)
  puts "Enter #{word_type}"
  gets.chomp
end

def madlibs
  answers = []
  WORD_TYPES.each { |type| answers << get_answer(type) }
  noun = answers[0].capitalize
  pad = SENTENCE_PAD.sample
  adv = answers[1]
  verb = answers[2]
  sent_end = SENTENCE_END.sample
  puts "#{noun} #{pad} #{adv} #{verb}. #{sent_end}"
end

madlibs
