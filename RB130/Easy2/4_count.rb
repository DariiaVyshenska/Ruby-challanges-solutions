def count(*args)
  # args.inject(0) { |el, sum| sum += 1 if yield(el) }
  result = 0
  args.each { |el| result += 1 if yield(el)}
  result
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
