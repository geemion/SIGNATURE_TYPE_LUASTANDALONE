-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a061df42239b 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (pehdr.NumberOfSections == 3 or peattributes.no_security == true) then
  return mp.INFECTED
end
return mp.CLEAN

