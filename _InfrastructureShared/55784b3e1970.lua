-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55784b3e1970 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 158720 and (mp.getfilesize)() <= 165888 then
  return mp.INFECTED
end
return mp.CLEAN

