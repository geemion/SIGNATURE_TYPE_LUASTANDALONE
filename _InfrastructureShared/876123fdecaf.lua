-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/876123fdecaf 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (pehdr.NumberOfSections == 3 or pehdr.NumberOfSections == 4) then
  return mp.INFECTED
end
return mp.CLEAN

