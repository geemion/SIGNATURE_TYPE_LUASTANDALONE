-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/db7810720028 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() < 500000 then
  return mp.INFECTED
end
return mp.CLEAN

