-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/86bf0b81bbaf 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("AGGR:CombinedJavaClass") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT == 4 then
  return mp.LOWFI
end
return mp.CLEAN

