-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d5bf9ccce7fc 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("AGGR:CombinedJavaClass") then
  return mp.CLEAN
end
return mp.INFECTED
