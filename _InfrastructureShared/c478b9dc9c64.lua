-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c478b9dc9c64 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.get_mpattribute)("pea_headerchecksum0") and (mp.get_mpattribute)("LUA:FileSizeGT1M.A") then
  return mp.INFECTED
end
return mp.CLEAN

