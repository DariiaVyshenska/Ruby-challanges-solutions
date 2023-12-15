names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  # puts names.shift # from first to last
  puts names.pop # from last to first
  break if names.empty?
end