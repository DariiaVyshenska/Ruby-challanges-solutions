CONVERT_COEF = 60
DEGREE = "\xC2\xB0"

def get_result(deg, min, sec)
  format(%(%d#{DEGREE}%#02d'%#02d"), deg, min, sec)
end

def get_decimal(value)
  value - value.truncate
end

def dms(float_degree)
  min_full = get_decimal(float_degree) * CONVERT_COEF
  sec = get_decimal(min_full) * CONVERT_COEF # add .round if rounding seconds!
  # (min_full += 1; sec = 0) if sec == 60 # if rounding sec, this is needed
  get_result(float_degree, min_full, sec)
end

# p dms(30) == %(30°00'00")
# p dms(254.6)# == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# p dms(1.216667)

p dms(400)# == %(400°00'00")
p dms(-40)# == %(-40°00'00")
p dms(-420)# == %(-420°00'00")
