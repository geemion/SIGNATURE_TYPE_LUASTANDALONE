-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13e78836704c7 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true and pehdr.NumberOfSections == 2 then
  return mp.INFECTED
end
return mp.CLEAN

