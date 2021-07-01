def max_by(arr)
  return nil if arr.empty?

  idx = 0
  max_el = arr[idx]
  raiting = yield(arr[idx])

  loop do
    idx += 1

    if yield(arr[idx]) > raiting
      raiting = yield(arr[idx])
      max_el = arr[idx]
    end
    break if idx == arr.size - 1
  end

  max_el
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil


# make it look better
