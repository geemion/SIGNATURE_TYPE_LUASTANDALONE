-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b8782a425226 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 2 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

