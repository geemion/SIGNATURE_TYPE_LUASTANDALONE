-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/908dea7b1cea 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  (mp.set_mpattribute)("PUA:Block:Genieo.I")
  return mp.INFECTED
end
return mp.LOWFI

