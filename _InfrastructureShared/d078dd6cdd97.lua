-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d078dd6cdd97 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.get_mpattribute)("pea_isexe") and (mp.getfilesize)() < 1024000 and pehdr.NumberOfSections == 3 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

