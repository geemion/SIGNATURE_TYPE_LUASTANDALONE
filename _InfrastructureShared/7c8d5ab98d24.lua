-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7c8d5ab98d24 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 6 then
  (mp.set_mpattribute)("PUA:Block:CoinMiner.F")
  return mp.INFECTED
end
return mp.LOWFI

