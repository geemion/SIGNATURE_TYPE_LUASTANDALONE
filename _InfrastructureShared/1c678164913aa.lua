-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c678164913aa 

-- params : ...
-- function num : 0
if (mp.bitand)(mp.HSTR_WEIGHT, 3) >= 2 then
  (mp.set_mpattribute)("PUA:Block:TurtleCoin")
  return mp.INFECTED
end
return mp.CLEAN

