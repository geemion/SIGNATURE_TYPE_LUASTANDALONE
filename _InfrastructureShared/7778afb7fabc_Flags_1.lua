-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7778afb7fabc_Flags_1 

-- params : ...
-- function num : 0
if (pehdr.SizeOfImage >= 327680 and pehdr.SizeOfImage <= 983040) or pehdr.SizeOfImage >= 2097152 and pehdr.SizeOfImage <= 3473408 then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306390)
return mp.SUSPICIOUS

