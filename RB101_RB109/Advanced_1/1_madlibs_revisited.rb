CONTENT_ARRS = {
  adjective: %w[quick lazy sleepy ugly],
  noun: %w[fox dog head leg],
  verb: %w[jumps lifts bites licks],
  adverb: %w[easily lazily noisily excitedly]
}
CONTENT = Hash.new { |_, k| CONTENT_ARRS[k].sample }

def print_with_population(str)
  puts format(str, CONTENT)
end

def madlibs_revisited(file_name)
  File.open(file_name).each do |line|
    print_with_population(line)
  end
end

madlibs_revisited('1_text.txt')
