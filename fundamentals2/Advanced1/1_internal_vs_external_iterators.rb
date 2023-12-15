my_enum = Enumerator.new do |i|
  fact = 1
  num = 1
  i << fact

  loop do
    fact = fact * num
    i << fact
    num += 1
  end
end

p my_enum.take(15)
p my_enum.next
p my_enum.next
p my_enum.next
p my_enum.next
