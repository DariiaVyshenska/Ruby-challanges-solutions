print 'Please write word or multiple words: '
user_words = gets.chomp


input_length = user_words.delete(' ').size
# Other options:
# user_words.split.join.size
# user_words.size - user_words.count(' ')

puts "There are #{input_length} characters in \"#{user_words}\"."