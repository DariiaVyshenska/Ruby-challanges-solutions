loop do
  number = rand(100)
  puts number
  break if (1..10).to_a.include? number # will look better with number.between?(1,10)
end