-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b28d1d20653b 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  (mp.set_mpattribute)("PUA:Block:AcidKeylogger.A")
  return mp.INFECTED
end
return mp.LOWFI

