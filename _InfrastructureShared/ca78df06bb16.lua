-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ca78df06bb16 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and (mp.getfilesize)() >= 9472 and (mp.getfilesize)() <= 20480 then
  return mp.INFECTED
end
return mp.CLEAN

