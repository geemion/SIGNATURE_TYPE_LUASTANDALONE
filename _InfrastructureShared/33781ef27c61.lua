-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/33781ef27c61 

-- params : ...
-- function num : 0
if (pesecs[4]).Name == ".rsrc" and (pesecs[4]).VirtualSize == 984 and (pesecs[4]).SizeOfRawData == 1024 then
  return mp.INFECTED
end
return mp.CLEAN

