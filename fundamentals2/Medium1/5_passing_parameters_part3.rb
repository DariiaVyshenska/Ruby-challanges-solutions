items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*veg, rest|
#   puts "#{veg.join(', ')}"
#   puts rest
# end

# gather(items) do |f, *rest, s|
#   puts f
#   puts "#{rest.join(', ')}"
#   puts s
# end

# gather(items) do |f, *rest|
#   puts f
#   puts "#{rest.join(', ')}"
# end

gather(items) do |f, s, t, fth|
  puts "#{f}, #{s}, #{t}, and #{fth}"
end
