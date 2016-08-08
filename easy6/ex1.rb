require "pry"
def dms(number)
  degree = number.to_s.split(".")[0].to_i
  minutes, seconds = ((number - number.to_s.split(".")[0].to_i) * 
  3600).round(2).divmod(60)
  %(#{degree}°#{minutes.to_i.to_s.rjust(2, "0")}'#{seconds.to_i.to_s.rjust(2, "0")}")
end


p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")