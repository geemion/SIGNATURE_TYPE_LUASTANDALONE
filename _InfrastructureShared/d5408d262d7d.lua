-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d5408d262d7d 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isexe == true and (mp.getfilesize)() < 500000 then
  return mp.INFECTED
end
return mp.CLEAN

