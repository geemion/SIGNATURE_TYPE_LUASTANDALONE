-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2178fe4d9b8f 

-- params : ...
-- function num : 0
if peattributes.packed and (mp.get_mpattribute)("SIGATTR:deepemu") and (mp.get_mpattribute)("MpHasExpensiveLoop") then
  return mp.INFECTED
end
return mp.CLEAN

