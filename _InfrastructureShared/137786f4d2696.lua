-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/137786f4d2696 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (mp.get_mpattribute)("Lua:OverSizedLnkFile") and (mp.getfilesize)() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN

