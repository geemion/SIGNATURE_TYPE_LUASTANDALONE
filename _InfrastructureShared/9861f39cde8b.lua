-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9861f39cde8b 

-- params : ...
-- function num : 0
if peattributes.no_security == true and pehdr.NumberOfSections == 7 then
  return mp.INFECTED
end
return mp.CLEAN

