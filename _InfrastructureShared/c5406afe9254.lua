-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c5406afe9254 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isexe == true and (mp.getfilesize)() < 30000000 then
  return mp.INFECTED
end
return mp.CLEAN

