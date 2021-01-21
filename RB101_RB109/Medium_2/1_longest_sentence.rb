def file_to_str(path)
  f = File.open(path, 'r')
  str_text = []
  f.each do |line|
    str_text << line.chomp
  end
  str_text.join(' ')
end

def get_sentence_sizes(sentences_arr)
  sentences_arr.each_with_object([]) { |el, obj| obj << el.split.size }
end

def longest_sentence(path)
  merged_txt = file_to_str(path)
  sentences_arr = merged_txt.split(/\.|\?|!/)
  size_arr = get_sentence_sizes(sentences_arr)
  max_size = size_arr.max
  puts "Maximum sentence size is #{max_size}."
  puts 'The following sentence(s) have maximum length:'
  sentences_arr.each_index do |idx|
    puts sentences_arr[idx].strip if size_arr[idx] == max_size
  end
end

file_name = './longest_sentence_text1.txt'
longest_sentence(file_name)
puts '***'
file_name2 = './longest_sentence_text2.txt'
longest_sentence(file_name2)
