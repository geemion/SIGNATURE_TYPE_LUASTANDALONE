-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a789d6341a2_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() == 147456 and pehdr.NumberOfSections == 5 and ((pesecs[3]).VirtualSize == 104608 or (pesecs[3]).VirtualSize == 104672) and (pesecs[4]).VirtualSize == 26488 and (pesecs[2]).VirtualSize > 33024 and (pesecs[2]).VirtualSize < 33280 then
  return mp.INFECTED
end
return mp.CLEAN

