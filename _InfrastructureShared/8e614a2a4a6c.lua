-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e614a2a4a6c 

-- params : ...
-- function num : 0
if (peattributes.isvbpcode == true or peattributes.isvbnative == true) and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN

