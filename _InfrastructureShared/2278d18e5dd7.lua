-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2278d18e5dd7 

-- params : ...
-- function num : 0
if peattributes.is_process then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:UpatreFragC_Nonprocess")
return mp.CLEAN

