-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c48d43a2666c 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  (mp.set_mpattribute)("PUA:Block:MacCleaner.B")
  return mp.INFECTED
end
return mp.LOWFI

