-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4961e841b00d 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 2 and (pesecs[2]).PointerToRawData == 2701144064 and pehdr.SizeOfImage < (pesecs[2]).PointerToRawData then
  return mp.INFECTED
end
return mp.CLEAN

