-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13478a742037f 

-- params : ...
-- function num : 0
if epcode[1] == 232 and epcode[6] == 233 and (mp.getfilesize)() > 94208 and (mp.getfilesize)() < 196608 then
  return mp.INFECTED
end
return mp.CLEAN

