DAY_HOURS = 24
HOUR_MIN = 60
DAY_MIN = DAY_HOURS * HOUR_MIN

def get_h_m(min)
  h, m = min.divmod(HOUR_MIN)
  new_h = h % DAY_HOURS
  [new_h, m]
end

def format_h_m(h_m_arr)
  h_m_arr.map { |i| i.to_s.rjust(2, '0') }.join(':')
end

def time_of_day(minutes)
  leftover_min = DAY_MIN + minutes.remainder(DAY_MIN)
  h_m = get_h_m(leftover_min)
  format_h_m(h_m)
end

p time_of_day(0) == '00:00'
p time_of_day(-3) == '23:57'
p time_of_day(35) == '00:35'
p time_of_day(-1437) == '00:03'
p time_of_day(3000) == '02:00'
p time_of_day(800) == '13:20'
p time_of_day(-4231) == '01:29'
