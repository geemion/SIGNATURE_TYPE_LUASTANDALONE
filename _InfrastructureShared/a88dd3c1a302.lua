-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a88dd3c1a302 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  (mp.set_mpattribute)("PUA:Block:CoinMiner.Y")
  return mp.INFECTED
end
return mp.LOWFI

