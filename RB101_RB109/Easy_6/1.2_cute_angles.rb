DEGREE_SIGN = "\xC2\xB0"
SEC = 60
MIN = 60
DEG = 360
SEC_IN_1_DEG = SEC * MIN
def get_result(deg, min, sec)
  format(%(%d#{DEGREE_SIGN}%#02d'%#02d"), deg, min, sec)
end

def dms2(float_degree)
  full_deg = float_degree % DEG
  full_sec = full_deg * SEC_IN_1_DEG
  deg, full_min = full_sec.divmod(SEC_IN_1_DEG)
  min, sec = full_min.divmod(SEC)
  get_result(deg, min, sec)
end

p dms2(30) == %(30°00'00")
p dms2(254.6) == %(254°36'00")
p dms2(93.034773) == %(93°02'05")
p dms2(0) == %(0°00'00")
p dms2(360) == %(360°00'00") || dms2(360) == %(0°00'00")

p dms2(400) == %(40°00'00")
p dms2(-40) == %(320°00'00")
p dms2(-420) == %(300°00'00")
