-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9b61e8bbe53c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:Win32/Sednit") and peattributes.no_security == true and pehdr.NumberOfSections == 9 then
  return mp.INFECTED
end
return mp.CLEAN

