-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9f785749efe4 

-- params : ...
-- function num : 0
if (peattributes.isvbnative == true and pehdr.NumberOfSections == 3) or peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

