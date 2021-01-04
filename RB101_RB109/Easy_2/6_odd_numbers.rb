# solution 1
(1..99).each { |num| puts num if num.odd? }

# solution 2
puts (1..99).select { |num| num.odd? }