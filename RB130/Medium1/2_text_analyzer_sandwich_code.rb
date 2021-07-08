# class TextAnalyzer
#   def process(file_name)
#     my_file = File.read(file_name)
#     yield(my_file)
#   end
# end

class TextAnalyzer
  def process(file_name)
    my_file = File.open(file_name)
    yield(my_file.read)
    my_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process('2_text_file.txt') { |f| puts "#{f.split("\n\n").count} paragraphs" }
analyzer.process('2_text_file.txt') { |f| puts "#{f.lines.count} lines" }
analyzer.process('2_text_file.txt') {|f| puts "#{f.split.count} words" }


# 3 paragraphs
# 15 lines
# 126 words
