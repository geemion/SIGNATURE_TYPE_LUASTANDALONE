-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/176783cbd944a 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() <= 20480 then
  return mp.INFECTED
end
return mp.CLEAN

