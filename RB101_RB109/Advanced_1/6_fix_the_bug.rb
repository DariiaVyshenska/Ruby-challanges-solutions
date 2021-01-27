def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The bug is:
# the next statement after elsif is evaluated for truthfulness. since when forgot
# to put the real statement, it evaluates #map and gets truthy output. however,
# we do not provide anything after the map and therefore the loop returns nil.
