-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5c296600ef3f 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//AGGR:OleFile") then
  return mp.INFECTED
end
return mp.CLEAN

