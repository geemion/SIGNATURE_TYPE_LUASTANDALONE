-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c98d27800fd9 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  (mp.set_mpattribute)("PUA:Block:MacOptimizer.B")
  return mp.INFECTED
end
return mp.LOWFI

