-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/927861432ff1 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage == 151552 then
  (mp.changedetectionname)(805306388)
  return mp.INFECTED
end
if pehdr.SizeOfImage == 86016 then
  (mp.changedetectionname)(805306389)
  return mp.INFECTED
end
return mp.SUSPICIOUS

