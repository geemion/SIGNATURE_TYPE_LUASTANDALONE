-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12b78c827ffa3 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (mp.get_mpattribute)("pea_headerchecksum0") and (mp.getfilesize)() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN

