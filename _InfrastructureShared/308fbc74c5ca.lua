-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/308fbc74c5ca 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("AGGR:ExcelFormulaRoutines") and (mp.get_mpattribute)("LUA:FileSizeLE40000.A") then
  return mp.INFECTED
end
return mp.CLEAN

