-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/608dd4375c62 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 12 then
  (mp.set_mpattribute)("PUA:Block:Shopsmart.D")
  return mp.INFECTED
end
return mp.LOWFI

