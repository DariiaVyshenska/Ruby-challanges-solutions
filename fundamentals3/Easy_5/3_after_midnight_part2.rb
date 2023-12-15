HOUR_MIN = 60
DAY_HOURS = 24
DAY_MIN = HOUR_MIN * DAY_HOURS

def after_midnight(time_str)
  time_arr = time_str.split(':').map(&:to_i)
  total_min = time_arr[0] * HOUR_MIN + time_arr[1]
  return total_min == DAY_MIN ? 0 : total_min
end

def before_midnight(time_str)
  min = after_midnight(time_str)
  return min if min.zero?

  DAY_MIN -  min
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
