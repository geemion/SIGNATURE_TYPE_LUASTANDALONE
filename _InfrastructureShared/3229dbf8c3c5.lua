-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3229dbf8c3c5 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpIsWmiMofScan") then
  return mp.INFECTED
end
return mp.CLEAN

