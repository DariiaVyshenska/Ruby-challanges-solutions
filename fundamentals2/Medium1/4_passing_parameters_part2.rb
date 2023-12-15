def raptor_to_arr(arr)
  yield(arr)
end


birds = %w(raven finch hawk eagle)
raptor_to_arr(birds) { |f, s, *rest| p rest }
