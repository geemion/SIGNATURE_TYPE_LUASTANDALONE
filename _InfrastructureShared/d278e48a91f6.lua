-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d278e48a91f6 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and pehdr.NumberOfSections <= 3 and (mp.get_mpattribute)("pea_headerchecksum0") and (mp.getfilesize)() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN

