-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/84bebfa38f49 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 7 then
  (mp.set_mpattribute)("PUA:Block:Domob.B")
  return mp.INFECTED
end
return mp.LOWFI

