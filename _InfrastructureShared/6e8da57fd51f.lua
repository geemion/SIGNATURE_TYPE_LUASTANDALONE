-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6e8da57fd51f 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  (mp.set_mpattribute)("PUA:Block:Pirrit.A")
  return mp.INFECTED
end
return mp.LOWFI

