-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f461df8fd93e 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 13 then
  (mp.set_mpattribute)("PUA:Block:GenoilEthMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan_genoil")
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_genoil")
end
return mp.CLEAN

