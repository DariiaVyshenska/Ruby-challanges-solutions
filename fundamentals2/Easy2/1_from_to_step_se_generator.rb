def step(start, finish, step_size)
  current = start
  loop do
    break if current > finish

    yield(current)
    current += step_size
  end
  current
end

step(1, 10, 3) { |value| puts "value = #{value}" }
